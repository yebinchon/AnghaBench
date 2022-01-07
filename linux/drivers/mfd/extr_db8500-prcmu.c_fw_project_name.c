
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
__attribute__((used)) static char *fw_project_name(u32 project)
{
 switch (project) {
 case 139:
  return "U8500";
 case 141:
  return "U8400";
 case 130:
  return "U9500";
 case 134:
  return "U8500 MBB";
 case 138:
  return "U8500 C1";
 case 137:
  return "U8500 C2";
 case 136:
  return "U8500 C3";
 case 135:
  return "U8500 C4";
 case 129:
  return "U9500 MBL";
 case 133:
  return "U8500 MBL";
 case 132:
  return "U8500 MBL2";
 case 131:
  return "U8520 MBL";
 case 140:
  return "U8420";
 case 128:
  return "U9540";
 case 144:
  return "A9420";
 case 143:
  return "L8540";
 case 142:
  return "L8580";
 default:
  return "Unknown";
 }
}
