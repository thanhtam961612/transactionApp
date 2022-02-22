import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/transaction.dart';
import 'package:flutter_application_1/widgets/new_transaction.dart';
import 'package:flutter_application_1/widgets/transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [];

  void _addNewTransaction(String txTitle, double amount)
  {
    final newTransaction = Transaction(id : DateTime.now().toString(),
     title: txTitle, amount: amount, date: DateTime.now());
     setState(() {
       _userTransaction.add(newTransaction);
     });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[NewTransaction(_addNewTransaction), TransactonList(_userTransaction)],
    );
  }
}
