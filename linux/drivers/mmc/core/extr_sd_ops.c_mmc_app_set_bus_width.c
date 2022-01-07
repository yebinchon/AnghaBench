
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_command {int flags; int arg; int opcode; } ;
struct mmc_card {int host; } ;


 int EINVAL ;


 int MMC_CMD_AC ;
 int MMC_RSP_R1 ;
 int SD_APP_SET_BUS_WIDTH ;
 int SD_BUS_WIDTH_1 ;
 int SD_BUS_WIDTH_4 ;
 int mmc_wait_for_app_cmd (int ,struct mmc_card*,struct mmc_command*) ;

int mmc_app_set_bus_width(struct mmc_card *card, int width)
{
 struct mmc_command cmd = {};

 cmd.opcode = SD_APP_SET_BUS_WIDTH;
 cmd.flags = MMC_RSP_R1 | MMC_CMD_AC;

 switch (width) {
 case 129:
  cmd.arg = SD_BUS_WIDTH_1;
  break;
 case 128:
  cmd.arg = SD_BUS_WIDTH_4;
  break;
 default:
  return -EINVAL;
 }

 return mmc_wait_for_app_cmd(card->host, card, &cmd);
}
