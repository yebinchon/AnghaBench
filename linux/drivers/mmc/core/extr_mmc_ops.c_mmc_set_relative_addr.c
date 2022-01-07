
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_command {int arg; int flags; int opcode; } ;
struct mmc_card {int rca; int host; } ;


 int MMC_CMD_AC ;
 int MMC_CMD_RETRIES ;
 int MMC_RSP_R1 ;
 int MMC_SET_RELATIVE_ADDR ;
 int mmc_wait_for_cmd (int ,struct mmc_command*,int ) ;

int mmc_set_relative_addr(struct mmc_card *card)
{
 struct mmc_command cmd = {};

 cmd.opcode = MMC_SET_RELATIVE_ADDR;
 cmd.arg = card->rca << 16;
 cmd.flags = MMC_RSP_R1 | MMC_CMD_AC;

 return mmc_wait_for_cmd(card->host, &cmd, MMC_CMD_RETRIES);
}
