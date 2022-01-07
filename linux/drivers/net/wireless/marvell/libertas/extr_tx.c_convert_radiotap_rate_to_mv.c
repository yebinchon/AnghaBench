
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static u32 convert_radiotap_rate_to_mv(u8 rate)
{
 switch (rate) {
 case 2:
  return 0 | (1 << 4);
 case 4:
  return 1 | (1 << 4);
 case 11:
  return 2 | (1 << 4);
 case 22:
  return 3 | (1 << 4);
 case 12:
  return 4 | (1 << 4);
 case 18:
  return 5 | (1 << 4);
 case 24:
  return 6 | (1 << 4);
 case 36:
  return 7 | (1 << 4);
 case 48:
  return 8 | (1 << 4);
 case 72:
  return 9 | (1 << 4);
 case 96:
  return 10 | (1 << 4);
 case 108:
  return 11 | (1 << 4);
 }
 return 0;
}
