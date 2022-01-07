
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;
__attribute__((used)) static int bpp_from_code(__u32 code)
{
 switch (code) {
 case 140:
 case 137:
 case 134:
 case 131:
  return 8;
 case 142:
 case 139:
 case 136:
 case 133:
  return 10;
 case 141:
 case 138:
 case 135:
 case 132:
  return 12;
 case 130:
 case 128:
 case 129:
 case 143:
 case 144:
  return 16;
 case 145:
  return 24;
 default:
  return 0;
 }
}
