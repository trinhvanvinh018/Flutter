import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(new RealWorldApp());

class RealWorldApp extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return new RealWorldState();
    }
}

class RealWorldState extends State<RealWorldApp>{

  var _isLoading=true;


  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new MaterialApp(
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Real World app bar"),
            actions: <Widget>[
              new IconButton(icon: new Icon(
                  Icons.refresh),
                  onPressed: (){
                    print("reloading ....");
                    setState(() {
                      _isLoading=false;
                    });
                  }
              )
            ],
          ),
          body: new Center(
            child: _isLoading ? new CircularProgressIndicator(): new Text("Finish loading..."),
          ),
        )
      );
    }
}