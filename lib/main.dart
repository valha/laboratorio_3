// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: const Text(
              "Math",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: FloatingActionButton(
              onPressed: () {
                resetValue();
              },
              backgroundColor: Colors.black,
              child: Icon(
                Icons.account_balance,
                color: Colors.white,
              ),
            ),
          ),
          persistentFooterButtons: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      minusOne();
                    },
                    child: Icon(Icons.remove)),
                ElevatedButton(
                    onPressed: () {
                      plusOne();
                    },
                    child: Icon(Icons.add)),
              ],
            ),
          ],
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                value.toString(),
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ))),
    );
  }

  void plusOne() {
    setState(() {
      value++;
    });
  }

  void minusOne() {
    setState(() {
      value--;
    });
  }

  void resetValue() {
    setState(() {
      value = 0;
    });
  }
}
