
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usdhi6_host {int irq_status; int mmc; TYPE_1__* mrq; } ;
struct mmc_command {int* resp; scalar_t__ opcode; } ;
struct TYPE_2__ {struct mmc_command* cmd; } ;


 scalar_t__ MMC_READ_MULTIPLE_BLOCK ;
 int MMC_RSP_136 ;
 int MMC_RSP_NONE ;
 scalar_t__ MMC_WRITE_MULTIPLE_BLOCK ;
 int USDHI6_SD_INFO1_RSP_END ;
 scalar_t__ USDHI6_SD_RSP10 ;
 scalar_t__ USDHI6_SD_RSP54 ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,scalar_t__) ;
 int mmc_dev (int ) ;
 int mmc_resp_type (struct mmc_command*) ;
 int usdhi6_read (struct usdhi6_host*,scalar_t__) ;

__attribute__((used)) static void usdhi6_resp_read(struct usdhi6_host *host)
{
 struct mmc_command *cmd = host->mrq->cmd;
 u32 *rsp = cmd->resp, tmp = 0;
 int i;
 if (mmc_resp_type(cmd) == MMC_RSP_NONE)
  return;

 if (!(host->irq_status & USDHI6_SD_INFO1_RSP_END)) {
  dev_err(mmc_dev(host->mmc),
   "CMD%d: response expected but is missing!\n", cmd->opcode);
  return;
 }

 if (mmc_resp_type(cmd) & MMC_RSP_136)
  for (i = 0; i < 4; i++) {
   if (i)
    rsp[3 - i] = tmp >> 24;
   tmp = usdhi6_read(host, USDHI6_SD_RSP10 + i * 8);
   rsp[3 - i] |= tmp << 8;
  }
 else if (cmd->opcode == MMC_READ_MULTIPLE_BLOCK ||
   cmd->opcode == MMC_WRITE_MULTIPLE_BLOCK)

  rsp[0] = usdhi6_read(host, USDHI6_SD_RSP54);
 else
  rsp[0] = usdhi6_read(host, USDHI6_SD_RSP10);

 dev_dbg(mmc_dev(host->mmc), "Response 0x%x\n", rsp[0]);
}
