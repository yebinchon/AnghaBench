
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmio_mmc_host {int lock; int done; int dma_issue; int dma_on; TYPE_1__* data; struct mmc_command* cmd; } ;
struct mmc_command {int* resp; int flags; int error; } ;
struct TYPE_2__ {int flags; } ;


 int CTL_RESPONSE ;
 int EILSEQ ;
 int ETIMEDOUT ;
 int MMC_DATA_READ ;
 int MMC_RSP_136 ;
 int MMC_RSP_CRC ;
 int MMC_RSP_R3 ;
 int TMIO_MASK_READOP ;
 int TMIO_MASK_WRITEOP ;
 unsigned int TMIO_STAT_CMDTIMEOUT ;
 unsigned int TMIO_STAT_CMD_IDX_ERR ;
 unsigned int TMIO_STAT_CRCFAIL ;
 unsigned int TMIO_STAT_STOPBIT_ERR ;
 int pr_debug (char*) ;
 int schedule_work (int *) ;
 int sd_ctrl_read16_and_16_as_32 (struct tmio_mmc_host*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;
 int tmio_mmc_disable_mmc_irqs (struct tmio_mmc_host*,int ) ;
 int tmio_mmc_enable_mmc_irqs (struct tmio_mmc_host*,int ) ;

__attribute__((used)) static void tmio_mmc_cmd_irq(struct tmio_mmc_host *host, unsigned int stat)
{
 struct mmc_command *cmd = host->cmd;
 int i, addr;

 spin_lock(&host->lock);

 if (!host->cmd) {
  pr_debug("Spurious CMD irq\n");
  goto out;
 }






 for (i = 3, addr = CTL_RESPONSE ; i >= 0 ; i--, addr += 4)
  cmd->resp[i] = sd_ctrl_read16_and_16_as_32(host, addr);

 if (cmd->flags & MMC_RSP_136) {
  cmd->resp[0] = (cmd->resp[0] << 8) | (cmd->resp[1] >> 24);
  cmd->resp[1] = (cmd->resp[1] << 8) | (cmd->resp[2] >> 24);
  cmd->resp[2] = (cmd->resp[2] << 8) | (cmd->resp[3] >> 24);
  cmd->resp[3] <<= 8;
 } else if (cmd->flags & MMC_RSP_R3) {
  cmd->resp[0] = cmd->resp[3];
 }

 if (stat & TMIO_STAT_CMDTIMEOUT)
  cmd->error = -ETIMEDOUT;
 else if ((stat & TMIO_STAT_CRCFAIL && cmd->flags & MMC_RSP_CRC) ||
   stat & TMIO_STAT_STOPBIT_ERR ||
   stat & TMIO_STAT_CMD_IDX_ERR)
  cmd->error = -EILSEQ;





 if (host->data && (!cmd->error || cmd->error == -EILSEQ)) {
  if (host->data->flags & MMC_DATA_READ) {
   if (!host->dma_on) {
    tmio_mmc_enable_mmc_irqs(host, TMIO_MASK_READOP);
   } else {
    tmio_mmc_disable_mmc_irqs(host,
         TMIO_MASK_READOP);
    tasklet_schedule(&host->dma_issue);
   }
  } else {
   if (!host->dma_on) {
    tmio_mmc_enable_mmc_irqs(host, TMIO_MASK_WRITEOP);
   } else {
    tmio_mmc_disable_mmc_irqs(host,
         TMIO_MASK_WRITEOP);
    tasklet_schedule(&host->dma_issue);
   }
  }
 } else {
  schedule_work(&host->done);
 }

out:
 spin_unlock(&host->lock);
}
