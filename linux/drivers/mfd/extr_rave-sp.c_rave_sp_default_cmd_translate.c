
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rave_sp_command { ____Placeholder_rave_sp_command } rave_sp_command ;


 int EINVAL ;
__attribute__((used)) static int rave_sp_default_cmd_translate(enum rave_sp_command command)
{





 switch (command) {
 case 133:
  return 0x11;
 case 134:
  return 0x12;
 case 135:
  return 0x14;
 case 128:
  return 0x1C;
 case 132:
  return 0x1D;
 case 131:
  return 0x1E;
 case 130:
  return 0x1F;
 case 129:
  return 0x20;
 default:
  return -EINVAL;
 }
}
