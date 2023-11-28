import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> dataToShow = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Row(children: [  ElevatedButton(
            onPressed: () {
              setState(() {
                // Pressing Button 1
                dataToShow = ['a', 'b', 'c'];
              });
            },
            child: Text('Button 1'),
          ),
           ElevatedButton(
            onPressed: () {
              setState(() {
                // Pressing Button 1
                dataToShow = ['f', 'g', 'h'];
              });
            },
            child: Text('Button 1'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                // Pressing Button 2
                dataToShow = ['c', 'd', 'e'];
              });
            },
            child: Text('Button 2'),
          ),],),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: dataToShow.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(dataToShow[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}