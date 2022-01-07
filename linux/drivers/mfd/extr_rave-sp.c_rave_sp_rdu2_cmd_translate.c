
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rave_sp_command { ____Placeholder_rave_sp_command } rave_sp_command ;


 int RAVE_SP_CMD_GET_FIRMWARE_VERSION ;
 int RAVE_SP_CMD_GET_GPIO_STATE ;
 int RAVE_SP_CMD_REQ_COPPER_REV ;
 int rave_sp_rdu1_cmd_translate (int) ;

__attribute__((used)) static int rave_sp_rdu2_cmd_translate(enum rave_sp_command command)
{
 if (command >= RAVE_SP_CMD_GET_FIRMWARE_VERSION &&
     command <= RAVE_SP_CMD_GET_GPIO_STATE)
  return command;

 if (command == RAVE_SP_CMD_REQ_COPPER_REV) {




  return 0x28;
 }

 return rave_sp_rdu1_cmd_translate(command);
}
