
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sh_mmcif_host {int lock; int timeout; int timeout_work; int wait_for; int addr; scalar_t__ ccs_enable; } ;
struct mmc_request {TYPE_1__* data; struct mmc_command* cmd; } ;
struct mmc_command {int flags; int arg; } ;
struct TYPE_2__ {int blksz; } ;


 int INT_CCS ;
 int MASK_MCCSTO ;
 int MASK_MCRSPE ;
 int MASK_MRBSYE ;
 int MASK_START_CMD ;
 int MMCIF_CE_ARG ;
 int MMCIF_CE_BLOCK_SET ;
 int MMCIF_CE_CMD_SET ;
 int MMCIF_CE_INT ;
 int MMCIF_CE_INT_MASK ;
 int MMCIF_WAIT_FOR_CMD ;
 int MMC_RSP_BUSY ;
 int schedule_delayed_work (int *,int ) ;
 int sh_mmcif_set_cmd (struct sh_mmcif_host*,struct mmc_request*) ;
 int sh_mmcif_writel (int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sh_mmcif_start_cmd(struct sh_mmcif_host *host,
          struct mmc_request *mrq)
{
 struct mmc_command *cmd = mrq->cmd;
 u32 opc;
 u32 mask = 0;
 unsigned long flags;

 if (cmd->flags & MMC_RSP_BUSY)
  mask = MASK_START_CMD | MASK_MRBSYE;
 else
  mask = MASK_START_CMD | MASK_MCRSPE;

 if (host->ccs_enable)
  mask |= MASK_MCCSTO;

 if (mrq->data) {
  sh_mmcif_writel(host->addr, MMCIF_CE_BLOCK_SET, 0);
  sh_mmcif_writel(host->addr, MMCIF_CE_BLOCK_SET,
    mrq->data->blksz);
 }
 opc = sh_mmcif_set_cmd(host, mrq);

 if (host->ccs_enable)
  sh_mmcif_writel(host->addr, MMCIF_CE_INT, 0xD80430C0);
 else
  sh_mmcif_writel(host->addr, MMCIF_CE_INT, 0xD80430C0 | INT_CCS);
 sh_mmcif_writel(host->addr, MMCIF_CE_INT_MASK, mask);

 sh_mmcif_writel(host->addr, MMCIF_CE_ARG, cmd->arg);

 spin_lock_irqsave(&host->lock, flags);
 sh_mmcif_writel(host->addr, MMCIF_CE_CMD_SET, opc);

 host->wait_for = MMCIF_WAIT_FOR_CMD;
 schedule_delayed_work(&host->timeout_work, host->timeout);
 spin_unlock_irqrestore(&host->lock, flags);
}
