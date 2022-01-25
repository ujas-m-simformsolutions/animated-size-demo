import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  double size = 100;
  bool _large = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            if(_large){
              setState(() {
                size = 200;
                _large = !_large;
              });
            }else{
              setState(() {
                size = 100;
                _large = !_large;
              });
            }
          },
          child: Container(
            color: Colors.amberAccent,
            child: AnimatedSize(
              curve: Curves.easeIn,
              duration: Duration(seconds: 1),
              vsync: this,
              child: FlutterLogo(size: size),
            ),
          ),
        ),
      ),
    );
  }
}
