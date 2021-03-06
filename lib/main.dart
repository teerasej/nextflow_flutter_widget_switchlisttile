import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nextflow Flutter Widget Today',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter 3 นาที: SwitchListTile '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _enableFingerPrint = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('การตั้งค่า'),
          ),
          SwitchListTile(
            title: Text('ใช้ลายนิ้วมือในการเข้าใช้'),
            value: _enableFingerPrint,
            onChanged: (bool value) {
              setState(() {
                _enableFingerPrint = value;

                if (_enableFingerPrint) {
                  Toast.show("เปิดการใช้งานตัวแสกนลายนิ้วมือแล้ว", context);
                }
              });
            },
          )
        ],
      ),
    );
  }
}
