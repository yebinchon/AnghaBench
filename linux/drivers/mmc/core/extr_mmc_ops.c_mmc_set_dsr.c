
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dsr; } ;
struct mmc_command {int arg; int flags; int opcode; } ;


 int MMC_CMD_AC ;
 int MMC_CMD_RETRIES ;
 int MMC_RSP_NONE ;
 int MMC_SET_DSR ;
 int mmc_wait_for_cmd (struct mmc_host*,struct mmc_command*,int ) ;

int mmc_set_dsr(struct mmc_host *host)
{
 struct mmc_command cmd = {};

 cmd.opcode = MMC_SET_DSR;

 cmd.arg = (host->dsr << 16) | 0xffff;
 cmd.flags = MMC_RSP_NONE | MMC_CMD_AC;

 return mmc_wait_for_cmd(host, &cmd, MMC_CMD_RETRIES);
}
