import 'package:flutter/material.dart';
import 'package:pet_adoption_carmel/Helpers/Colors/colors.dart';
import 'package:pet_adoption_carmel/screens/PetViewScreen/pages/petdetailsscreen.dart';


class AllPetCategoryWidget extends StatefulWidget {
  final String id;
  final String image;
  final String name;
  final String breed;

  const AllPetCategoryWidget({super.key,required this.name,required this.image,required this.id,required this.breed});

  @override
  State<AllPetCategoryWidget> createState() => _AllPetCategoryWidgetState();
}

class _AllPetCategoryWidgetState extends State<AllPetCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
     return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: GestureDetector(
        onTap: () {
         Navigator.of(context).pushNamed(PetDetailsScreen.routeName,arguments:widget.id);
           // Navigator.of(context).pushNamed(GardenDetailsScreen.routeName,arguments:widget.packageid);
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            side: BorderSide(color: Colors.grey.shade200),
          ),
          elevation: 0.1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(                                               
                height: size.height*0.2,
                alignment: Alignment.topRight,
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(widget.image),
                    fit: BoxFit.cover,
                  ),   
                ),
                
              
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "𓃠  ${widget.name}",style: TextStyle(color:purpleColor,fontWeight: FontWeight.bold,),
                    ),
                    SizedBox(height: size.height*0.01),
                    Text(widget.breed,style: TextStyle(fontWeight: FontWeight.w900,fontSize: 11),)
                  
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}