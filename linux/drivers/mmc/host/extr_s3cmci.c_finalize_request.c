
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct s3cmci_host {scalar_t__ complete_what; int cmd_is_stop; int prescaler; int mmc; struct mmc_request* mrq; scalar_t__ base; scalar_t__ is2440; int dma; int dma_complete; } ;
struct mmc_request {TYPE_2__* data; struct mmc_command* cmd; struct mmc_command* stop; } ;
struct mmc_command {scalar_t__ error; TYPE_1__* data; void** resp; } ;
struct TYPE_4__ {scalar_t__ error; int bytes_xfered; int blocks; int blksz; } ;
struct TYPE_3__ {scalar_t__ error; scalar_t__ stop; } ;


 scalar_t__ COMPLETION_FINALIZE ;
 scalar_t__ COMPLETION_NONE ;
 scalar_t__ S3C2410_SDICMDARG ;
 scalar_t__ S3C2410_SDICMDCON ;
 scalar_t__ S3C2410_SDICON ;
 int S3C2410_SDICON_FIFORESET ;
 scalar_t__ S3C2410_SDIDCON ;
 int S3C2410_SDIDCON_STOP ;
 scalar_t__ S3C2410_SDIFSTA ;
 scalar_t__ S3C2410_SDIPRE ;
 scalar_t__ S3C2410_SDIRSP0 ;
 scalar_t__ S3C2410_SDIRSP1 ;
 scalar_t__ S3C2410_SDIRSP2 ;
 scalar_t__ S3C2410_SDIRSP3 ;
 int S3C2440_SDIFSTA_FIFOFAIL ;
 int S3C2440_SDIFSTA_FIFORESET ;
 int clear_imask (struct s3cmci_host*) ;
 int dbg (struct s3cmci_host*,int ,char*,int ) ;
 int dbg_dma ;
 int dbg_dumpcmd (struct s3cmci_host*,struct mmc_command*,int) ;
 int dmaengine_terminate_all (int ) ;
 int mmc_request_done (int ,struct mmc_request*) ;
 void* readl (scalar_t__) ;
 int s3cmci_check_sdio_irq (struct s3cmci_host*) ;
 scalar_t__ s3cmci_host_usedma (struct s3cmci_host*) ;
 int s3cmci_send_request (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void finalize_request(struct s3cmci_host *host)
{
 struct mmc_request *mrq = host->mrq;
 struct mmc_command *cmd;
 int debug_as_failure = 0;

 if (host->complete_what != COMPLETION_FINALIZE)
  return;

 if (!mrq)
  return;
 cmd = host->cmd_is_stop ? mrq->stop : mrq->cmd;

 if (cmd->data && (cmd->error == 0) &&
     (cmd->data->error == 0)) {
  if (s3cmci_host_usedma(host) && (!host->dma_complete)) {
   dbg(host, dbg_dma, "DMA Missing (%d)!\n",
       host->dma_complete);
   return;
  }
 }


 cmd->resp[0] = readl(host->base + S3C2410_SDIRSP0);
 cmd->resp[1] = readl(host->base + S3C2410_SDIRSP1);
 cmd->resp[2] = readl(host->base + S3C2410_SDIRSP2);
 cmd->resp[3] = readl(host->base + S3C2410_SDIRSP3);

 writel(host->prescaler, host->base + S3C2410_SDIPRE);

 if (cmd->error)
  debug_as_failure = 1;

 if (cmd->data && cmd->data->error)
  debug_as_failure = 1;

 dbg_dumpcmd(host, cmd, debug_as_failure);


 writel(0, host->base + S3C2410_SDICMDARG);
 writel(S3C2410_SDIDCON_STOP, host->base + S3C2410_SDIDCON);
 writel(0, host->base + S3C2410_SDICMDCON);
 clear_imask(host);

 if (cmd->data && cmd->error)
  cmd->data->error = cmd->error;

 if (cmd->data && cmd->data->stop && (!host->cmd_is_stop)) {
  host->cmd_is_stop = 1;
  s3cmci_send_request(host->mmc);
  return;
 }


 if (!mrq->data)
  goto request_done;


 if (mrq->data->error == 0) {
  mrq->data->bytes_xfered =
   (mrq->data->blocks * mrq->data->blksz);
 } else {
  mrq->data->bytes_xfered = 0;
 }



 if (mrq->data->error != 0) {
  if (s3cmci_host_usedma(host))
   dmaengine_terminate_all(host->dma);

  if (host->is2440) {

   writel(S3C2440_SDIFSTA_FIFORESET |
          S3C2440_SDIFSTA_FIFOFAIL,
          host->base + S3C2410_SDIFSTA);
  } else {
   u32 mci_con;


   mci_con = readl(host->base + S3C2410_SDICON);
   mci_con |= S3C2410_SDICON_FIFORESET;

   writel(mci_con, host->base + S3C2410_SDICON);
  }
 }

request_done:
 host->complete_what = COMPLETION_NONE;
 host->mrq = ((void*)0);

 s3cmci_check_sdio_irq(host);
 mmc_request_done(host->mmc, mrq);
}
