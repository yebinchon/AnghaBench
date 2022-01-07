
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 ath10k_parse_mpdudensity(u8 mpdudensity)
{
 switch (mpdudensity) {
 case 0:
  return 0;
 case 1:
 case 2:
 case 3:



  return 1;
 case 4:
  return 2;
 case 5:
  return 4;
 case 6:
  return 8;
 case 7:
  return 16;
 default:
  return 0;
 }
}
