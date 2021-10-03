import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        buttonColor: Colors.pink,
        scaffoldBackgroundColor: Colors.black
      ),
      home: MyHomePage(title: 'Calculator'),
      debugShowCheckedModeBanner: false,
    );
  }
}

String StrInput="";

final InputTextController = TextEditingController();
final ResultTextController = TextEditingController();

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState(){
    super.initState();
    InputTextController.addListener((){});
    ResultTextController.addListener((){});
  }

  @override
  void dispose() {
    InputTextController.dispose();
    ResultTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(10.0)),

          TextField(decoration: InputDecoration.collapsed(hintText: "0",hintStyle: TextStyle(color: Colors.white)),
          style: TextStyle(fontSize: 65,color: Colors.white,fontWeight: FontWeight.w500),
          textAlign: TextAlign.right,
          controller:  InputTextController,
          onTap: ()=>FocusScope.of(context).requestFocus(new FocusNode()),),
          
          Padding(padding: EdgeInsets.all(7.0)),
          
          TextField(decoration: InputDecoration.collapsed(hintText: "0",hintStyle: TextStyle(color: Colors.white)),
          textInputAction: TextInputAction.none,
          keyboardType: TextInputType.number,
          style: TextStyle(fontSize: 70,color: Colors.white,fontWeight: FontWeight.w500),
          textAlign: TextAlign.right,
          controller: ResultTextController,
          onTap: (){
            FocusScope.of(context).requestFocus(new FocusNode());
          },),


          Padding(padding: EdgeInsets.fromLTRB(0.0, 22.0, 0.0, 0.0)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(onPressed: (){setState(() {
                InputTextController.text="";
                ResultTextController.text="";

              });},child: Text("\nAC\n",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),shape: CircleBorder(side: BorderSide(width: 2,color: Colors.black),),color: Colors.grey,),
              RaisedButton(onPressed: ()=>setState((){InputTextController.text = InputTextController.text + "(";}),child: Text("\n(\n",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),shape: CircleBorder(side: BorderSide(width: 2,color: Colors.black),),color: Colors.grey,),
              RaisedButton(onPressed: ()=>setState((){InputTextController.text = InputTextController.text + ")";}),child: Text("\n)\n",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),shape: CircleBorder(side: BorderSide(width: 2,color: Colors.black)),color: Colors.grey,),
              RaisedButton(onPressed: ()=>setState((){InputTextController.text = InputTextController.text + "/";}),child: Text("\n/\n",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),),shape: CircleBorder(side: BorderSide(width: 2,color: Colors.black)),color: Colors.orange,),
            ],
          ),

          Padding(padding: EdgeInsets.all(5.0)),


          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(onPressed: ()=>setState((){InputTextController.text = InputTextController.text + "7";}),child: Text("\n7\n",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),),shape: CircleBorder(side: BorderSide(width: 2,color: Colors.black)),color: Color(0xff4D4C4C),),
              RaisedButton(onPressed: ()=>setState((){InputTextController.text = InputTextController.text + "8";}),child: Text("\n8\n",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),),shape: CircleBorder(side: BorderSide(width: 2,color: Colors.black)),color: Color(0xff4D4C4C),),
              RaisedButton(onPressed: ()=>setState((){InputTextController.text = InputTextController.text + "9";}),child: Text("\n9\n",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),),shape: CircleBorder(side: BorderSide(width: 2,color: Colors.black)),color: Color(0xff4D4C4C),),
              RaisedButton(onPressed: ()=>setState((){InputTextController.text = InputTextController.text + "*";}),child: Text("\n*\n",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),),shape: CircleBorder(side: BorderSide(width: 2,color: Colors.black)),color: Colors.orange,),
            ],
          ),

          Padding(padding: EdgeInsets.all(5.0)),


          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(onPressed: ()=>setState((){InputTextController.text = InputTextController.text + "4";}),child: Text("\n4\n",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),),shape: CircleBorder(side: BorderSide(width: 2,color: Colors.black)),color: Color(0xff4D4C4C),),
              RaisedButton(onPressed: ()=>setState((){InputTextController.text = InputTextController.text + "5";}),child: Text("\n5\n",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),),shape: CircleBorder(side: BorderSide(width: 2,color: Colors.black)),color: Color(0xff4D4C4C),),
              RaisedButton(onPressed: ()=>setState((){InputTextController.text = InputTextController.text + "6";}),child: Text("\n6\n",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),),shape: CircleBorder(side: BorderSide(width: 2,color: Colors.black)),color: Color(0xff4D4C4C),),
              RaisedButton(onPressed: ()=>setState((){InputTextController.text = InputTextController.text + "-";}),child: Text("\n-\n",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),),shape: CircleBorder(side: BorderSide(width: 2,color: Colors.black)),color: Colors.orange,),
            ],
          ),

          Padding(padding: EdgeInsets.all(5.0)),


          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(onPressed: ()=>setState((){InputTextController.text = InputTextController.text + "1";}),child: Text("\n1\n",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),),shape: CircleBorder(side: BorderSide(width: 2,color: Colors.black)),color: Color(0xff4D4C4C),),
              RaisedButton(onPressed: ()=>setState((){InputTextController.text = InputTextController.text + "2";}),child: Text("\n2\n",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),),shape: CircleBorder(side: BorderSide(width: 2,color: Colors.black)),color: Color(0xff4D4C4C),),
              RaisedButton(onPressed: ()=>setState((){InputTextController.text = InputTextController.text + "3";}),child: Text("\n3\n",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),),shape: CircleBorder(side: BorderSide(width: 2,color: Colors.black)),color: Color(0xff4D4C4C),),
              RaisedButton(onPressed: ()=>setState((){InputTextController.text = InputTextController.text + "+";}),child: Text("\n+\n",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),),shape: CircleBorder(side: BorderSide(width: 2,color: Colors.black)),color: Colors.orange,),
            ],
          ),

          Padding(padding: EdgeInsets.all(5.0)),

          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(onPressed: ()=>setState((){InputTextController.text = InputTextController.text + ".";}),child: Text("\n.\n",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),),shape: CircleBorder(side: BorderSide(width: 2,color: Colors.black)),color: Color(0xff4D4C4C),),
              RaisedButton(onPressed: ()=>setState((){InputTextController.text = InputTextController.text + "0";}),child: Text("\n0\n",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),),shape: CircleBorder(side: BorderSide(width: 2,color: Colors.black)),color: Color(0xff4D4C4C),),
              RaisedButton(onPressed: (){InputTextController.text=(InputTextController.text.length>0)?(InputTextController.text.substring(0, InputTextController.text.length-1)):"";},child: Column(children: <Widget>[Text("\n"),Icon(Icons.backspace,size: 18,color: Colors.white),Text("\n")],),shape: CircleBorder(side: BorderSide(width: 2,color: Colors.black)),color: Color(0xff4D4C4C),),
              RaisedButton(onPressed: (){
                Parser p = new Parser();
                // Bind variables:
                ContextModel cm = new ContextModel();
                Expression exp = p.parse(InputTextController.text);
                setState(() {
                  ResultTextController.text=exp.evaluate(EvaluationType.REAL, cm).toString();
                });
              },child: Text("\n=\n",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),),shape: CircleBorder(side: BorderSide(width: 2,color: Colors.black)),color: Colors.orange,),
            ],
          ),

          Padding(padding: EdgeInsets.all(5.0)),



          ],
        ),
      
    );
  }
}
