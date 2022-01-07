
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {int dummy; } ;
struct mmc_command {int opcode; int flags; int resp; int arg; } ;


 int MMC_CMD_AC ;
 int MMC_CMD_RETRIES ;
 int MMC_RSP_R2 ;
 int memcpy (int *,int ,int) ;
 int mmc_wait_for_cmd (struct mmc_host*,struct mmc_command*,int ) ;

__attribute__((used)) static int
mmc_send_cxd_native(struct mmc_host *host, u32 arg, u32 *cxd, int opcode)
{
 int err;
 struct mmc_command cmd = {};

 cmd.opcode = opcode;
 cmd.arg = arg;
 cmd.flags = MMC_RSP_R2 | MMC_CMD_AC;

 err = mmc_wait_for_cmd(host, &cmd, MMC_CMD_RETRIES);
 if (err)
  return err;

 memcpy(cxd, cmd.resp, sizeof(u32) * 4);

 return 0;
}
