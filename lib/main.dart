import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Simple Interest Calculator",
        home: HomePage()),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String p = '', y = '', m = '', d = '', r = '', result = '', t = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Simple Interest Calculator"),
          backgroundColor: myColor,
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: [
              SizedBox(height: 25),
              //For Principal
              TextField(
                onChanged: (value) {
                  p = value;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Principal",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              //For Years
              TextField(
                onChanged: (value) {
                  y = value;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Years",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              //For Months
              TextField(
                onChanged: (value) {
                  m = value;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Months",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              //For Days
              TextField(
                onChanged: (value) {
                  d = value;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Days",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              //For Rate
              TextField(
                onChanged: (value) {
                  r = value;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Rate",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),

              //For Button
              MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.red),
                  ),
                  height: 50,
                  color: myColor,
                  child: Text(
                    "Calculate",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    setState(() {
                      t = (double.parse(y) +
                              (double.parse(m) / 12) +
                              ((double.parse(d) / 30) / 12))
                          .toString();
                      result = ((double.parse(p) *
                                  double.parse(t) *
                                  double.parse(r)) /
                              100)
                          .toString();
                    });
                  }),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  "The result is $result.",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ));
  }
}

const myColor = Color(0xFFE21717);
