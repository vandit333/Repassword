import 'package:flutter/material.dart';
import 'package:untitled4/login.dart';

void main() {
  runApp(MaterialApp(home: unti(),));
}

class unti extends StatefulWidget {
  const unti({Key? key}) : super(key: key);

  @override
  State<unti> createState() => _untiState();
}

class _untiState extends State<unti> {
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  String s1="";
  String s2="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("vandit"),
    ),
    body: Padding(
      padding: const EdgeInsets.all(25),
      child: Column(children: [
        SizedBox(height: 100,),
        TextField(controller: t1,decoration: InputDecoration(
          labelText: "Enter Password"
        ),),
        SizedBox(height: 50,),
        TextField(controller: t2,decoration: InputDecoration(
            labelText: "Enter Repassword"
        ),),
        SizedBox(height: 50,),
        ElevatedButton(onPressed: () {
          s1=t1.text;
          s2=t2.text;
          if(s1==s2)
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return login();
              },));
            }
        }, child: Text('login'))
      ],),
    ),
    );
  }
}

