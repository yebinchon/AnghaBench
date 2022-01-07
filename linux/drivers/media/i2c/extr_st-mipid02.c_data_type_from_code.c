
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __u32 ;
__attribute__((used)) static u8 data_type_from_code(__u32 code)
{
 switch (code) {
 case 140:
 case 137:
 case 134:
 case 131:
  return 0x2a;
 case 142:
 case 139:
 case 136:
 case 133:
  return 0x2b;
 case 141:
 case 138:
 case 135:
 case 132:
  return 0x2c;
 case 130:
 case 128:
 case 129:
  return 0x1e;
 case 145:
  return 0x24;
 case 143:
 case 144:
  return 0x22;
 default:
  return 0;
 }
}
