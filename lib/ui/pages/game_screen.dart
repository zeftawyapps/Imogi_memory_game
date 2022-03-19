import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_game/logic/game_cubide/game_cubit.dart';

import '../values.dart';
import '../widgets/bcg.dart';
import '../widgets/gameicons_icons.dart';

 class GameScreen extends StatefulWidget {
   const GameScreen({Key? key}) : super(key: key);

   @override
   State<GameScreen> createState() => _GameScreenState();
 }

 class _GameScreenState extends State<GameScreen> {
late   GameCubit gameCubit ;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gameCubit = GameCubit();

  }
   @override
   Widget build(BuildContext context) {
     gameCubit.gameInit();
     return Scaffold(
       body: Container(child:

         BlocBuilder<GameCubit , GameState>(bloc: GameCubit(),
         builder: (c ,s ){
 return  WillPopScope(
   onWillPop: ()async  {
     SystemNavigator.pop();
     return false ;  },
   child: SafeArea(
     child: Scaffold(
       body: BacgGame(Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(height: 40,
               color:Color(0x79110F0F),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   MaterialButton(
                       onPressed: (){
                         // showDialog(
                         //     barrierDismissible: false ,
                         //     context: context, builder: (context){
                         //
                         //   return GameResult();
                         // });

                       }
                       ,child: Icon(Icons.settings,color: Colors.white ,size:24  ,))
                   , MaterialButton(
                       onPressed: (){
                         // gamep.restartgame();
                         // setState(() {
                         //   gamep.game() ;
                         //   restart = true ;
                         //   // Navigator.pushReplacement(context, MaterialPageRoute(builder: (c)=>Game_Sreen()  ) );
                         //
                         // });
                       }
                       ,child: Icon(Icons.replay ,color: Colors.white ,size:24  ,))
                   , MaterialButton(
                       onPressed: (){ }
                       ,child: Icon(Icons.local_grocery_store ,color: Colors.white ,size:24  ,))

                 ],),
             ),
             Container(height:80,
               child: Row(children: [
                 Expanded(flex: 1,
                     child: Visibility(
                       visible: true ,
                       child: Stack(children: [
                         GestureDetector(
                           onTap: (){
                             // gamep.helpcurect(context);
                           },
                           child: Container(
                             decoration: BoxDecoration(color:

                             bcbegGamebtn
                                 ,  border: Border.all(color: Colors.blueAccent),
                                 borderRadius: BorderRadius.circular(10)
                             )
                             ,child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Icon(Gameicons.ok,color: Colors.white ,size:28  ,),
                                 Text("0",style: Theme.of(context).primaryTextTheme.bodyText1)

                               ],),
                           ),),
                         ),
                       ],),
                     )
                 )
                 ,

                 Expanded(flex: 1,
                     child: Stack(children: [
                       GestureDetector(
                         onTap: (){
                           // gamep.helpAdd();
                           },
                         child: Container(
                           decoration: BoxDecoration(color:

                           bcbegGamebtn
                               ,  border: Border.all(color: Colors.blueAccent),
                               borderRadius: BorderRadius.circular(10)
                           )
                           ,   child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Icon(Icons.add,color: Colors.white ,size:28  ,),
                               Text( "0" ,style: Theme.of(context).primaryTextTheme.bodyText1)

                             ],),
                         ),),
                       ),
                     ],)
                 )
                 ,


                 Expanded(flex: 1,
                   child: Container(

                     child: Column(children: [
                       Text('المستوى',style: Theme.of(context).primaryTextTheme.bodyText1),
                       Text("5",style: Theme.of(context).primaryTextTheme.bodyText1)

                     ],),),
                 )
                 , Expanded(flex: 1,
                   child: Container(


                     child: Column(children: [
                       Text('محاولات',style: Theme.of(context).primaryTextTheme.bodyText2),
                       Text("5",style: Theme.of(context).primaryTextTheme.bodyText1)

                     ],),),
                 )

                 ,   Expanded(flex: 1,
                   child: Container(


                     child: Column(children: [
                       Text('نتيجة',style: Theme.of(context).primaryTextTheme.bodyText1),
                       Text("10" ,style: Theme.of(context).primaryTextTheme.bodyText1)

                     ],),),
                 )
               ],),
             ) ,

             Expanded(child:Stack(children: [

             ],) ),
             Container(height: 10,)
           ],
         )
         ,
       )),
     ),
   ),
 );

         },
         )
         ,),

     );
   }





 //
 }
