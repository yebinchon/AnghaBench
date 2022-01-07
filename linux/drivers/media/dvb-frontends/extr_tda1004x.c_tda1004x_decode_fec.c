
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FEC_1_2 ;
 int FEC_2_3 ;
 int FEC_3_4 ;
 int FEC_5_6 ;
 int FEC_7_8 ;

__attribute__((used)) static int tda1004x_decode_fec(int tdafec)
{

 switch (tdafec) {
 case 0:
  return FEC_1_2;
 case 1:
  return FEC_2_3;
 case 2:
  return FEC_3_4;
 case 3:
  return FEC_5_6;
 case 4:
  return FEC_7_8;
 }


 return -1;
}
