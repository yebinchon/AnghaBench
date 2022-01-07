
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mmc_davinci_host {int do_dma; int active_request; scalar_t__ base; TYPE_2__* mmc; TYPE_1__* cmd; int data_dir; scalar_t__ sdio_int; int * data; } ;
struct mmc_data {int stop; int mrq; int sg_len; int sg; } ;
struct TYPE_6__ {int caps; } ;
struct TYPE_5__ {scalar_t__ error; } ;


 scalar_t__ DAVINCI_MMCIM ;
 int DAVINCI_MMC_DATADIR_NONE ;
 scalar_t__ DAVINCI_SDIOIST ;
 scalar_t__ DAVINCI_SDIOST0 ;
 int MMC_CAP_SDIO_IRQ ;
 int SDIOIST_IOINT ;
 int SDIOST0_DAT1_HI ;
 int davinci_abort_dma (struct mmc_davinci_host*) ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int mmc_davinci_start_command (struct mmc_davinci_host*,int ) ;
 int mmc_dev (TYPE_2__*) ;
 int mmc_get_dma_dir (struct mmc_data*) ;
 int mmc_request_done (TYPE_2__*,int ) ;
 int mmc_signal_sdio_irq (TYPE_2__*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void
mmc_davinci_xfer_done(struct mmc_davinci_host *host, struct mmc_data *data)
{
 host->data = ((void*)0);

 if (host->mmc->caps & MMC_CAP_SDIO_IRQ) {





  if (host->sdio_int && !(readl(host->base + DAVINCI_SDIOST0) &
     SDIOST0_DAT1_HI)) {
   writel(SDIOIST_IOINT, host->base + DAVINCI_SDIOIST);
   mmc_signal_sdio_irq(host->mmc);
  }
 }

 if (host->do_dma) {
  davinci_abort_dma(host);

  dma_unmap_sg(mmc_dev(host->mmc), data->sg, data->sg_len,
        mmc_get_dma_dir(data));
  host->do_dma = 0;
 }
 host->data_dir = DAVINCI_MMC_DATADIR_NONE;

 if (!data->stop || (host->cmd && host->cmd->error)) {
  mmc_request_done(host->mmc, data->mrq);
  writel(0, host->base + DAVINCI_MMCIM);
  host->active_request = 0;
 } else
  mmc_davinci_start_command(host, data->stop);
}
