
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
__attribute__((used)) static int mvpp2_cls_hek_field_size(u32 field)
{
 switch (field) {
 case 130:
  return 48;
 case 129:
  return 12;
 case 128:
  return 3;
 case 135:
 case 136:
  return 32;
 case 133:
 case 134:
  return 128;
 case 131:
 case 132:
  return 16;
 default:
  return -1;
 }
}
