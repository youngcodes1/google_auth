import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
class Sign extends StatefulWidget {
  const Sign({ Key? key }) : super(key: key);

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  @override
  Widget build(BuildContext context) {
    GoogleSignInAccount? user = _googleSignIn.currentUser;  
    return Scaffold(
     appBar: AppBar(
      title:const Center(child: Padding(
        padding: EdgeInsets.only(top:20.0),
        child: Text('Google Sign In '),
      ),
      ),
    
     ),
     body: Center(
       child: Column(
        children: [
          ElevatedButton(onPressed: ()async{
            await _googleSignIn.signIn();
            setState(() {
              
            });
          },
           child:const Text('Sign In')
           ),
           ElevatedButton(onPressed: ()async{
            await _googleSignIn.signOut();
            setState(() {
              
            });

           }, 
           child:const Text("Sign Up")
           ),
        ],
       ),
     ),
      
    );
  }
}