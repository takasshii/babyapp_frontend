import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff181E27),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 70),
            child: Column(
              children: <Widget>[
                Center(
                  child: Container(
                    height: 130,
                    width: 200,
                    color: Colors.red,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: DefaultTabController(
                    length: 2,
                    child: Column(
                      children: <Widget>[
                        TabBar(
                          tabs: <Widget>[
                            Tab(text: 'Login'),
                            Tab(text: 'Signup'),
                          ],
                          indicatorColor: Colors.tealAccent,
                        ),
                        TabBarView(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      style: TextStyle(
                                          color: Colors.white
                                      ),
                                      decoration: InputDecoration(
                                        fillColor: Colors.black, filled: true,
                                        labelText: 'Email Address',
                                        labelStyle: TextStyle(
                                          color: Color(0x98FFFFFF),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 12),
                                      child: TextFormField(
                                        keyboardType:
                                        TextInputType.visiblePassword,
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          labelText: 'Password',
                                          labelStyle: TextStyle(
                                            color: Color(0x98FFFFFF),
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                          ),
                                          suffixIcon: IconButton(
                                            icon: Icon(Icons.visibility_off),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 12),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Password',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
