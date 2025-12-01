import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const Secondpage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.cyan[300]),
              child: Column(
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.network(
                        "https://padletuploads.blob.core.windows.net/aws/130981890/MnCVWF9fLUnJHBJ_TN_bJw/bf28a88f7fccbb76ba79c5d2d189f2f5.jpg",
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("aaaaaaaa"),
                  SizedBox(height: 10),
                  Text("aaaaaaaa"),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                  ),
                  SizedBox(height: 20),

                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(Icons.phone, color: Colors.green),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("เบอร์โทรศัพท์"),
                          Text(
                            "000-0000000",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.red[100],
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(Icons.cake, color: Colors.red),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("วันเกิด"),
                          Text(
                            "01 กันยายน 2568",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(Icons.pin_drop, color: Colors.orange),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("ที่อยู่"),
                          Text(
                            "ชลบุรี",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(Icons.school, color: Colors.purple),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("การศึกษา"),
                          Text(
                            "วิทยาลัยเทคโนโลยีภาคตะวันออก(อีเทค)",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/second'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(140, 5, 140, 5),

                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("ไปยังหน้า 2"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        child: ClipOval(
                          child: Image.network(
                            "https://padletuploads.blob.core.windows.net/aws/130981890/MnCVWF9fLUnJHBJ_TN_bJw/bf28a88f7fccbb76ba79c5d2d189f2f5.jpg",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "5",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                          Text("กำลังติดตาม", style: TextStyle(fontSize: 10)),
                        ],
                      ),
                      SizedBox(width: 10),
                      Container(width: 1, height: 40, color: Colors.grey),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "823.2 K",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                          Text("ผู้ติดตาม", style: TextStyle(fontSize: 10)),
                        ],
                      ),
                      SizedBox(width: 10),
                      Container(width: 1, height: 40, color: Colors.grey),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "326.2 K",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "ถูกใจและบันทึก",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Nanika_aaa",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                        ),
                      ),
                      Icon(Icons.verified, color: Colors.blue, size: 20),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.tiktok, color: Colors.grey, size: 20),
                      Text(
                        "Nanika_aaa",
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 18,
                        ),
                      ),
                      Icon(Icons.arrow_drop_down, color: Colors.grey),
                    ],
                  ),

                  SizedBox(height: 10),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/second'),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(130, 5, 130, 5),

                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                        ),
                        child: Text("ติดตาม"),
                      ),
                      Icon(Icons.share, color: Colors.black),
                    ],
                  ),
                  Row(
                    children: [
                      Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg",
                        width: 200,
                        height: 300,
                      ),
                      SizedBox(width: 10),
                      Image.network(
                        "https://i.pinimg.com/474x/ba/b5/4f/bab54fac65ecc60ec383fd0d5a731b55.jpg",
                        width: 180,
                        height: 280,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
