import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.amber.shade900, Colors.amber])),
          child: const Dice(),
        ),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  const Dice({super.key});
  @override
  State<Dice> createState() => _Dice();
}

class _Dice extends State<Dice> {
  var diceOne = 1;
  var diceTwo = 1;

  void rollDice() {
    setState(() {
      diceOne = Random().nextInt(6) + 1;
      diceTwo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/dice-$diceOne.png',
              width: 222,
            ),
            Image.asset(
              'assets/images/dice-$diceTwo.png',
              width: 222,
            ),
          ],
        ),
        const SizedBox(height: 40),
        TextButton(
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(12),
              foregroundColor: Colors.amberAccent),
          onPressed: rollDice,
          child: const Text(
            'Roll !',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
