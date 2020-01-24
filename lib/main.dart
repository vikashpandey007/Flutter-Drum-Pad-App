import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:audioplayers/audio_cache.dart';

main() {
  runApp(Drumpad());
  
}
class Drumpad extends StatefulWidget {
  @override
  _DrumpadState createState() => _DrumpadState();
}
class _DrumpadState extends State<Drumpad> {
   AudioCache player = AudioCache();
    // or as a local variable

  
  

   Widget drumbotton(text,Color colorName) {
    return  MaterialButton(
        height: 120,
        minWidth: 120,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        elevation: 8.0,
        color: colorName,
        highlightColor: Colors.black, 
        onPressed: () {
         playsound(text);
        },
        
                  child: Text(" ", style: TextStyle(fontSize: 20)),
               );
             }


             @override
  // void initState() {
  //   SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown
  // ]);
    
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
               title: "Drum pad",
               theme: ThemeData.dark(),
               home: Scaffold(
                 
                 body:  Padding(
                        padding: const EdgeInsets.all(19.0), 
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     SizedBox(height: 13.0,),  
                     Row(children: <Widget>[
                        drumbotton("one",Colors.red),
                          Padding(padding: EdgeInsets.all(3),),
                        drumbotton("two",Colors.yellow),
                          Padding(padding: EdgeInsets.all(3),),
                        drumbotton("three",Colors.pink),
                     
                     ],),

                     Padding(padding: EdgeInsets.all(3),),

                      Row(children: <Widget>[
                        drumbotton("one",Colors.amber),
                          Padding(padding: EdgeInsets.all(3),),
                        drumbotton("two",Colors.blue),
                          Padding(padding: EdgeInsets.all(3),),
                        drumbotton("three",Colors.green[200]),

                     ],),
                     Padding(padding: EdgeInsets.all(3),),
                      Row(children: <Widget>[
                        drumbotton("one",Colors.red[200]),
                          Padding(padding: EdgeInsets.all(3),),
                        drumbotton("two",Colors.yellow[100]),
                          Padding(padding: EdgeInsets.all(3),),
                        drumbotton("three",Colors.pink[200]),
                       
                     ],),
                        Padding(padding: EdgeInsets.all(3),),
                       Row(children: <Widget>[
                        drumbotton("four",Colors.lightGreen),
                          Padding(padding: EdgeInsets.all(3),),
                        drumbotton("five",Colors.purple[200]),
                          Padding(padding: EdgeInsets.all(3),),
                        drumbotton("six",Colors.grey),
                        
                     ],),
                       Padding(padding: EdgeInsets.all(3),),
                       Row(children: <Widget>[
                        drumbotton("seven",Colors.cyan),
                          Padding(padding: EdgeInsets.all(3),),
                        drumbotton("eight",Colors.teal),
                          Padding(padding: EdgeInsets.all(3),),
                        drumbotton("nine",Colors.blue),
                        
                     ],),
                       Padding(padding: EdgeInsets.all(3),),
                      Row(children: <Widget>[
                        drumbotton("ten",Colors.pink),
                         Padding(padding: EdgeInsets.all(3),),
                        drumbotton("eleven",Colors.purple),
                          Padding(padding: EdgeInsets.all(3),),
                        drumbotton("twelev",Colors.blue[200]),
                       
                     ],),
                    
                       
                   ],

                 ),
               ),

    ));
  }
     void  playsound( String text) {
             switch (text) {
      case "one":
      player.play("sound1.wav");
        
        break;
         case "two":
      player.play("sound2.wav");
        
        break;
         case "three":
       player.play("sound3.wav");
        
        break;
         case "four":
       player.play("sound4.wav");
        break;
         case "five":
      player.play("sound5.wav");
        
        break;
         case "six":
     player.play("sound6.wav");
        
        break;
         case "seven":
     player.play("sound7.wav");
        
        break;
         case "eight":
     player.play("sound8.wav");
        
        break;
         case "nine":
     player.play("sound9.wav");
        
        break;
         case "ten":
       player.play("sound10.wav");
        
        break;
         break;
         case "eleven":
       player.play("sound11.wav");
        
        break;
         break;
         case "twelev":
       player.play("sound12.wav");
        
        break;
         case "tweleve":
       player.play("sound12.wav");
        
        break;
      
    }
           }

}
