import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const FirstScreen(),
        "/second_screen": (context) => const SecondScreen(),
        "/third_screen": (context) => const ThirdScreen(),
        "/four_screen": (context) => const FourScreen(
              url:
                  '"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvbZJxwjotiOmAemXQ51u0Erw2Z-9Dv_Z_dvgUkFAy&s",',
            ),
        "/five_screen": (context) => const FiveScreen(
              url:
                  '"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvbZJxwjotiOmAemXQ51u0Erw2Z-9Dv_Z_dvgUkFAy&s",',
            ),
      },
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 36, top: 281),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "I am",
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: width * 0.8,
                height: height * 0.075,
                child: TextField(
                  showCursor: false,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SecondScreen(),
                      ),
                    );
                  },
                  decoration: const InputDecoration(
                    fillColor: Color(0xFF0099FF),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    hintText: 'Man',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: width * 0.8,
                height: height * 0.075,
                child: TextField(
                  showCursor: false,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ThirdScreen(),
                      ),
                    );
                  },
                  decoration: const InputDecoration(
                    fillColor: Color(0xFF0099FF),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    hintText: 'Woman',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: height * 0.2325),
              RichText(
                text: const TextSpan(
                  text: 'Already have account? ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF000000),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Log in',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({
    super.key,
  });

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        foregroundColor: Colors.blue,
        title: Row(
          children: const [
            Text(
              'Back',
              style: TextStyle(fontSize: 17, color: Colors.blue),
            ),
            SizedBox(
              width: 70,
            ),
            Text(
              'MAN',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ],
        ),
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(44.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Your name",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: width * 0.8,
              height: height * 0.075,
              child: const TextField(
                cursorHeight: 4,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            const Text(
              "Age",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: width * 0.8,
              height: height * 0.075,
              child: const TextField(
                cursorHeight: 4,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            const Text(
              "Image Url",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: width * 0.8,
              height: height * 0.075,
              child: const TextField(
                cursorHeight: 4,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            TextField(
              showCursor: false,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FourScreen(
                      url:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvbZJxwjotiOmAemXQ51u0Erw2Z-9Dv_Z_dvgUkFAy&s",
                    ),
                  ),
                );
              },
              decoration: const InputDecoration(
                fillColor: Color(0xFF0099FF),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                hintText: 'Next',
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({
    super.key,
  });

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        foregroundColor: Colors.blue,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Back',
              style: TextStyle(fontSize: 17, color: Colors.blue),
            ),
            SizedBox(
              width: 70,
            ),
            Text(
              'WOMAN',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ],
        ),
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(44.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Your name",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: width * 0.8,
              height: height * 0.075,
              child: const TextField(
                cursorHeight: 4,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            const Text(
              "Age",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: width * 0.8,
              height: height * 0.075,
              child: const TextField(
                cursorHeight: 4,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            const Text(
              "Image Url",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: width * 0.8,
              height: height * 0.075,
              child: const TextField(
                cursorHeight: 4,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            TextField(
              showCursor: false,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FiveScreen(
                      url:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvbZJxwjotiOmAemXQ51u0Erw2Z-9Dv_Z_dvgUkFAy&s",
                    ),
                  ),
                );
              },
              decoration: const InputDecoration(
                fillColor: Color(0xFF0099FF),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                hintText: 'Next',
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class FourScreen extends StatefulWidget {
  final String url;
  const FourScreen({super.key, required this.url});

  @override
  State<FourScreen> createState() => _FourScreenState();
}

class _FourScreenState extends State<FourScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: width * 1.0,
              height: height * 0.468,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/man.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 35),
                  width: width * 0.021,
                  height: height * 0.01,
                  decoration: BoxDecoration(
                    color: const Color(0xFF0099FF),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                const Text(
                  "Phillipe",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 180,
                ),
                const Text(
                  "52 y.o",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFC4DAF1)),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 26, top: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          TextWidget(personalDate: "Location:"),
                          TextWidget(personalDate: "Languages:"),
                          TextWidget(personalDate: "Edication:"),
                          TextWidget(personalDate: "Job;"),
                          TextWidget(personalDate: "Zodiac"),
                          TextWidget(personalDate: "Height"),
                          TextWidget(personalDate: "Eye color:"),
                          TextWidget(personalDate: "Hair color"),
                          TextWidget(personalDate: "Smoking:"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          TextWidget4(specificData: '🇫🇷 France, Leon'),
                          TextWidget4(specificData: '🇬🇧 English'),
                          TextWidget4(specificData: "University degree"),
                          TextWidget4(specificData: "Museum worker, lecturer"),
                          TextWidget4(specificData: "🐟 Pisces"),
                          TextWidget4(specificData: "154 cm (5'05)"),
                          TextWidget4(specificData: "Green"),
                          TextWidget4(specificData: "Redhead"),
                          TextWidget4(specificData: "Non-smoker"),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TextWidget2 extends StatelessWidget {
  const TextWidget2({
    Key? key,
    required this.specificData,
  }) : super(key: key);

  final String specificData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Text(
        specificData,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.personalDate,
  }) : super(key: key);

  final String personalDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Text(
        personalDate,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class FiveScreen extends StatefulWidget {
  final String url;
  const FiveScreen({super.key, required this.url});

  @override
  State<FiveScreen> createState() => _FiveScreenState();
}

class _FiveScreenState extends State<FiveScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: width * 1.0,
              height: height * 0.468,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/woman.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 35),
                  width: width * 0.021,
                  height: height * 0.01,
                  decoration: BoxDecoration(
                    color: const Color(0xFF0099FF),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                const Text(
                  "Marina",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 180,
                ),
                const Text(
                  "47 y.o",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFC4DAF1)),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 26, top: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          TextWidget(personalDate: "Location:"),
                          TextWidget(personalDate: "Languages:"),
                          TextWidget(personalDate: "Edication:"),
                          TextWidget(personalDate: "Job;"),
                          TextWidget(personalDate: "Zodiac"),
                          TextWidget(personalDate: "Height"),
                          TextWidget(personalDate: "Eye color:"),
                          TextWidget(personalDate: "Hair color"),
                          TextWidget(personalDate: "Smoking:"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          TextWidget4(
                              specificData: '🇧🇾 Belarus, Baranovichi'),
                          TextWidget4(specificData: '🇪🇸 Spanish'),
                          TextWidget4(specificData: "University degree"),
                          TextWidget4(specificData: "Museum worker, lecturer"),
                          TextWidget4(specificData: "🐟 Pisces"),
                          TextWidget4(specificData: "154 cm (5'05)"),
                          TextWidget4(specificData: "Green"),
                          TextWidget4(specificData: "Redhead"),
                          TextWidget4(specificData: "Non-smoker"),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TextWidget4 extends StatelessWidget {
  const TextWidget4({
    Key? key,
    required this.specificData,
  }) : super(key: key);

  final String specificData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Text(
        specificData,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class TextWidget3 extends StatelessWidget {
  const TextWidget3({
    Key? key,
    required this.personalDate,
  }) : super(key: key);

  final String personalDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Text(
        personalDate,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
