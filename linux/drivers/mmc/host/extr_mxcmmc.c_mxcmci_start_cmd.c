
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mxcmci_host {scalar_t__ dma_dir; int lock; scalar_t__ use_sdio; TYPE_1__* desc; int mmc; struct mmc_command* cmd; int default_irq_mask; } ;
struct mmc_command {int error; unsigned int opcode; int arg; } ;
struct TYPE_2__ {struct mxcmci_host* callback_param; int callback; } ;


 unsigned int CMD_DAT_CONT_RESPONSE_136BIT ;
 unsigned int CMD_DAT_CONT_RESPONSE_48BIT ;
 unsigned int CMD_DAT_CONT_RESPONSE_48BIT_CRC ;
 scalar_t__ DMA_FROM_DEVICE ;
 int EINVAL ;
 int INT_END_CMD_RES_EN ;
 int INT_SDIO_IRQ_EN ;
 int INT_WRITE_OP_DONE_EN ;
 int MMC_REG_ARG ;
 int MMC_REG_CMD ;
 int MMC_REG_CMD_DAT_CONT ;
 int MMC_REG_INT_CNTR ;





 int WARN_ON (int ) ;
 int dev_err (int ,char*,int) ;
 int mmc_dev (int ) ;
 int mmc_resp_type (struct mmc_command*) ;
 int mxcmci_dma_callback ;
 scalar_t__ mxcmci_use_dma (struct mxcmci_host*) ;
 int mxcmci_writel (struct mxcmci_host*,int ,int ) ;
 int mxcmci_writew (struct mxcmci_host*,unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mxcmci_start_cmd(struct mxcmci_host *host, struct mmc_command *cmd,
  unsigned int cmdat)
{
 u32 int_cntr = host->default_irq_mask;
 unsigned long flags;

 WARN_ON(host->cmd != ((void*)0));
 host->cmd = cmd;

 switch (mmc_resp_type(cmd)) {
 case 131:
 case 130:
  cmdat |= CMD_DAT_CONT_RESPONSE_48BIT_CRC;
  break;
 case 129:
  cmdat |= CMD_DAT_CONT_RESPONSE_136BIT;
  break;
 case 128:
  cmdat |= CMD_DAT_CONT_RESPONSE_48BIT;
  break;
 case 132:
  break;
 default:
  dev_err(mmc_dev(host->mmc), "unhandled response type 0x%x\n",
    mmc_resp_type(cmd));
  cmd->error = -EINVAL;
  return -EINVAL;
 }

 int_cntr = INT_END_CMD_RES_EN;

 if (mxcmci_use_dma(host)) {
  if (host->dma_dir == DMA_FROM_DEVICE) {
   host->desc->callback = mxcmci_dma_callback;
   host->desc->callback_param = host;
  } else {
   int_cntr |= INT_WRITE_OP_DONE_EN;
  }
 }

 spin_lock_irqsave(&host->lock, flags);
 if (host->use_sdio)
  int_cntr |= INT_SDIO_IRQ_EN;
 mxcmci_writel(host, int_cntr, MMC_REG_INT_CNTR);
 spin_unlock_irqrestore(&host->lock, flags);

 mxcmci_writew(host, cmd->opcode, MMC_REG_CMD);
 mxcmci_writel(host, cmd->arg, MMC_REG_ARG);
 mxcmci_writew(host, cmdat, MMC_REG_CMD_DAT_CONT);

 return 0;
}
