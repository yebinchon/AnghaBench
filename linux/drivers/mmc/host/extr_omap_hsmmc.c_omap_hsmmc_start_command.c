
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_hsmmc_host {int response_busy; int flags; int req_in_progress; int base; scalar_t__ use_dma; TYPE_2__* mrq; struct mmc_command* cmd; int mmc; } ;
struct mmc_data {int flags; } ;
struct mmc_command {int opcode; int arg; int flags; } ;
struct TYPE_4__ {TYPE_1__* sbc; struct mmc_command* stop; } ;
struct TYPE_3__ {int arg; } ;


 int ACEN_ACMD23 ;
 int ARG ;
 int AUTO_CMD23 ;
 int BCE ;
 int CMD ;
 int DDIR ;
 int DMAE ;
 int DP_SELECT ;
 int MMC_DATA_READ ;
 int MMC_RSP_136 ;
 int MMC_RSP_BUSY ;
 int MMC_RSP_PRESENT ;
 int MSBS ;
 int OMAP_HSMMC_WRITE (int ,int ,int) ;
 int SDMASA ;
 int dev_vdbg (int ,char*,int ,int,int) ;
 int mmc_dev (int ) ;
 int mmc_hostname (int ) ;
 scalar_t__ mmc_op_multi (int) ;
 int omap_hsmmc_enable_irq (struct omap_hsmmc_host*,struct mmc_command*) ;

__attribute__((used)) static void
omap_hsmmc_start_command(struct omap_hsmmc_host *host, struct mmc_command *cmd,
 struct mmc_data *data)
{
 int cmdreg = 0, resptype = 0, cmdtype = 0;

 dev_vdbg(mmc_dev(host->mmc), "%s: CMD%d, argument 0x%08x\n",
  mmc_hostname(host->mmc), cmd->opcode, cmd->arg);
 host->cmd = cmd;

 omap_hsmmc_enable_irq(host, cmd);

 host->response_busy = 0;
 if (cmd->flags & MMC_RSP_PRESENT) {
  if (cmd->flags & MMC_RSP_136)
   resptype = 1;
  else if (cmd->flags & MMC_RSP_BUSY) {
   resptype = 3;
   host->response_busy = 1;
  } else
   resptype = 2;
 }






 if (cmd == host->mrq->stop)
  cmdtype = 0x3;

 cmdreg = (cmd->opcode << 24) | (resptype << 16) | (cmdtype << 22);

 if ((host->flags & AUTO_CMD23) && mmc_op_multi(cmd->opcode) &&
     host->mrq->sbc) {
  cmdreg |= ACEN_ACMD23;
  OMAP_HSMMC_WRITE(host->base, SDMASA, host->mrq->sbc->arg);
 }
 if (data) {
  cmdreg |= DP_SELECT | MSBS | BCE;
  if (data->flags & MMC_DATA_READ)
   cmdreg |= DDIR;
  else
   cmdreg &= ~(DDIR);
 }

 if (host->use_dma)
  cmdreg |= DMAE;

 host->req_in_progress = 1;

 OMAP_HSMMC_WRITE(host->base, ARG, cmd->arg);
 OMAP_HSMMC_WRITE(host->base, CMD, cmdreg);
}
