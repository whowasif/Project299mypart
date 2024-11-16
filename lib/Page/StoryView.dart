import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final controller = StoryController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: StoryView(
        storyItems: [
          StoryItem.pageImage(
              url:
                  'https://plus.unsplash.com/premium_photo-1669218057891-c79da315d253?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YW1hemluZyUyMHBpY3R1cmV8ZW58MHx8MHx8fDA%3D',
              controller: controller),
          StoryItem.text(title: 'Hello World', backgroundColor: Colors.grey)
        ],
        controller: controller,
        inline: false,
        repeat: false,
        onComplete: () => {Navigator.of(context).pop()},
      ),
    );
  }
}
