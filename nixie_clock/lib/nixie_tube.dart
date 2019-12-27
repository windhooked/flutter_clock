import 'package:flutter/material.dart';
import 'package:hexagonal_grid/hexagonal_grid.dart';
import 'package:hexagonal_grid_widget/hex_grid_child.dart';
import 'package:hexagonal_grid_widget/hex_grid_context.dart';
import 'package:hexagonal_grid_widget/hex_grid_widget.dart';


class NixieTubeWidget extends StatelessWidget {
  NixieTubeWidget({this.digit, this.width, this.style, this.gridPainter});
  /// Digit to display
  final String digit;
  final double width;
  final TextStyle style;
  final CustomPainter gridPainter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Center(
        child: Stack(
          children: <Widget>[
            DefaultTextStyle(
              style: style,
              child: Text(digit)
            ),
            CustomPaint(
              painter: gridPainter,
            ),
          ],
        ),
      ),
    );
  }
}