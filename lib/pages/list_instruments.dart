import 'package:flutter/material.dart';
import 'package:flutter_lo_ra_wan/pages/auto_list_instruments.dart';
import 'package:flutter_lo_ra_wan/pages/manual_instruments.dart';

class ListInstruments extends StatefulWidget {
  const ListInstruments({super.key});

  @override
  State<ListInstruments> createState() => _ListInstrumentsState();
}

class _ListInstrumentsState extends State<ListInstruments>
    with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // Number of tabs
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 280.0,
      // padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: const [
               Tab(text: 'Auto'),
               Tab(text: 'Manual'),
            ],
          ),
          // SizedBox(height: 16.0),
          Container(
            height: 150.0,
            width: 260.0,
            child: TabBarView(
              controller: _tabController,
              children: const [
                AutoListInstruments(),
                ManualRange(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

}
