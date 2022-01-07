
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mmc_host {int dummy; } ;
struct mmc_command {int flags; int busy_timeout; int opcode; } ;


 int MMC_CMD_AC ;
 int MMC_RSP_R1 ;
 int MMC_RSP_SPI_R1 ;
 scalar_t__ MMC_SEND_TUNING_BLOCK_HS200 ;
 int MMC_STOP_TRANSMISSION ;
 int mmc_wait_for_cmd (struct mmc_host*,struct mmc_command*,int ) ;

int mmc_abort_tuning(struct mmc_host *host, u32 opcode)
{
 struct mmc_command cmd = {};






 if (opcode != MMC_SEND_TUNING_BLOCK_HS200)
  return 0;

 cmd.opcode = MMC_STOP_TRANSMISSION;
 cmd.flags = MMC_RSP_SPI_R1 | MMC_RSP_R1 | MMC_CMD_AC;





 cmd.busy_timeout = 150;

 return mmc_wait_for_cmd(host, &cmd, 0);
}
