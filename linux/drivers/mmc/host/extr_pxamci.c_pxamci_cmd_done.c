
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pxamci_host {int mrq; int dma_chan_tx; TYPE_1__* data; scalar_t__ base; struct mmc_command* cmd; } ;
struct mmc_command {int* resp; int flags; int error; int opcode; } ;
struct TYPE_2__ {int flags; } ;


 int DATA_TRAN_DONE ;
 int EILSEQ ;
 int END_CMD_RES ;
 int ETIMEDOUT ;
 int MMC_DATA_WRITE ;
 scalar_t__ MMC_RES ;
 int MMC_RSP_136 ;
 int MMC_RSP_CRC ;
 unsigned int STAT_RES_CRC_ERR ;
 unsigned int STAT_TIME_OUT_RESPONSE ;
 scalar_t__ cpu_is_pxa27x () ;
 int dma_async_issue_pending (int ) ;
 int pr_debug (char*,int ) ;
 int pxamci_disable_irq (struct pxamci_host*,int ) ;
 int pxamci_enable_irq (struct pxamci_host*,int ) ;
 int pxamci_finish_request (struct pxamci_host*,int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int pxamci_cmd_done(struct pxamci_host *host, unsigned int stat)
{
 struct mmc_command *cmd = host->cmd;
 int i;
 u32 v;

 if (!cmd)
  return 0;

 host->cmd = ((void*)0);





 v = readl(host->base + MMC_RES) & 0xffff;
 for (i = 0; i < 4; i++) {
  u32 w1 = readl(host->base + MMC_RES) & 0xffff;
  u32 w2 = readl(host->base + MMC_RES) & 0xffff;
  cmd->resp[i] = v << 24 | w1 << 8 | w2 >> 8;
  v = w2;
 }

 if (stat & STAT_TIME_OUT_RESPONSE) {
  cmd->error = -ETIMEDOUT;
 } else if (stat & STAT_RES_CRC_ERR && cmd->flags & MMC_RSP_CRC) {






  if (cpu_is_pxa27x() &&
      (cmd->flags & MMC_RSP_136 && cmd->resp[0] & 0x80000000))
   pr_debug("ignoring CRC from command %d - *risky*\n", cmd->opcode);
  else
   cmd->error = -EILSEQ;
 }

 pxamci_disable_irq(host, END_CMD_RES);
 if (host->data && !cmd->error) {
  pxamci_enable_irq(host, DATA_TRAN_DONE);




  if (cpu_is_pxa27x() && host->data->flags & MMC_DATA_WRITE)
   dma_async_issue_pending(host->dma_chan_tx);
 } else {
  pxamci_finish_request(host, host->mrq);
 }

 return 1;
}
