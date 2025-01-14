
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mmc_command {scalar_t__ opcode; int flags; void** resp; int error; } ;
struct device {int dummy; } ;
struct bcm2835_host {scalar_t__ data_complete; scalar_t__ data; struct mmc_command* cmd; TYPE_2__* mrq; int use_busy; scalar_t__ dma_desc; scalar_t__ ioaddr; TYPE_1__* pdev; } ;
struct TYPE_4__ {struct mmc_command* stop; int cmd; struct mmc_command* sbc; } ;
struct TYPE_3__ {struct device dev; } ;


 int EILSEQ ;
 int EIO ;
 int ETIMEDOUT ;
 int MMC_RSP_136 ;
 int MMC_RSP_PRESENT ;
 scalar_t__ MMC_SEND_OP_COND ;
 int SDCMD_FAIL_FLAG ;
 int SDCMD_NEW_FLAG ;
 scalar_t__ SDEDM ;
 int SDEDM_FORCE_DATA_MODE ;
 int SDEDM_FSM_MASK ;
 int SDEDM_FSM_READWAIT ;
 int SDEDM_FSM_WRITESTART1 ;
 scalar_t__ SDHSTS ;
 int SDHSTS_CMD_TIME_OUT ;
 int SDHSTS_CRC7_ERROR ;
 int SDHSTS_ERROR_MASK ;
 scalar_t__ SDRSP0 ;
 int bcm2835_dumpregs (struct bcm2835_host*) ;
 int bcm2835_finish_request (struct bcm2835_host*) ;
 int bcm2835_read_wait_sdcmd (struct bcm2835_host*,int) ;
 scalar_t__ bcm2835_send_command (struct bcm2835_host*,int ) ;
 int bcm2835_start_dma (struct bcm2835_host*) ;
 int bcm2835_transfer_complete (struct bcm2835_host*) ;
 int dev_err (struct device*,char*,...) ;
 void* readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void bcm2835_finish_command(struct bcm2835_host *host)
{
 struct device *dev = &host->pdev->dev;
 struct mmc_command *cmd = host->cmd;
 u32 sdcmd;

 sdcmd = bcm2835_read_wait_sdcmd(host, 100);


 if (sdcmd & SDCMD_NEW_FLAG) {
  dev_err(dev, "command never completed.\n");
  bcm2835_dumpregs(host);
  host->cmd->error = -EIO;
  bcm2835_finish_request(host);
  return;
 } else if (sdcmd & SDCMD_FAIL_FLAG) {
  u32 sdhsts = readl(host->ioaddr + SDHSTS);


  writel(SDHSTS_ERROR_MASK, host->ioaddr + SDHSTS);

  if (!(sdhsts & SDHSTS_CRC7_ERROR) ||
      (host->cmd->opcode != MMC_SEND_OP_COND)) {
   u32 edm, fsm;

   if (sdhsts & SDHSTS_CMD_TIME_OUT) {
    host->cmd->error = -ETIMEDOUT;
   } else {
    dev_err(dev, "unexpected command %d error\n",
     host->cmd->opcode);
    bcm2835_dumpregs(host);
    host->cmd->error = -EILSEQ;
   }
   edm = readl(host->ioaddr + SDEDM);
   fsm = edm & SDEDM_FSM_MASK;
   if (fsm == SDEDM_FSM_READWAIT ||
       fsm == SDEDM_FSM_WRITESTART1)

    writel(edm | SDEDM_FORCE_DATA_MODE,
           host->ioaddr + SDEDM);
   bcm2835_finish_request(host);
   return;
  }
 }

 if (cmd->flags & MMC_RSP_PRESENT) {
  if (cmd->flags & MMC_RSP_136) {
   int i;

   for (i = 0; i < 4; i++) {
    cmd->resp[3 - i] =
     readl(host->ioaddr + SDRSP0 + i * 4);
   }
  } else {
   cmd->resp[0] = readl(host->ioaddr + SDRSP0);
  }
 }

 if (cmd == host->mrq->sbc) {

  host->cmd = ((void*)0);
  if (bcm2835_send_command(host, host->mrq->cmd)) {
   if (host->data && host->dma_desc)



    bcm2835_start_dma(host);

   if (!host->use_busy)
    bcm2835_finish_command(host);
  }
 } else if (cmd == host->mrq->stop) {

  bcm2835_finish_request(host);
 } else {

  host->cmd = ((void*)0);
  if (!host->data)
   bcm2835_finish_request(host);
  else if (host->data_complete)
   bcm2835_transfer_complete(host);
 }
}
