
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;







bool rc_validate_scancode(enum rc_proto proto, u32 scancode)
{
 switch (proto) {




 case 130:
  if ((((scancode >> 16) ^ ~(scancode >> 8)) & 0xff) == 0)
   return 0;
  break;





 case 131:
  if ((((scancode >> 8) ^ ~scancode) & 0xff) == 0)
   return 0;
  break;




 case 128:
  if ((scancode & 0xffff0000) != 0x800f0000)
   return 0;
  break;
 case 129:
  if ((scancode & 0xffff0000) == 0x800f0000)
   return 0;
  break;
 default:
  break;
 }

 return 1;
}
