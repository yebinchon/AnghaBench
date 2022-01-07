
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxamci_host {int dma_chan_tx; int dma_chan_rx; scalar_t__ base; TYPE_1__* pdata; } ;
struct platform_device {int dev; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int (* exit ) (int *,struct mmc_host*) ;} ;


 int CLK_IS_OFF ;
 int DATA_TRAN_DONE ;
 int END_CMD_RES ;
 scalar_t__ MMC_I_MASK ;
 int PRG_DONE ;
 int RXFIFO_RD_REQ ;
 int STOP_CMD ;
 int TXFIFO_WR_REQ ;
 int dma_release_channel (int ) ;
 int dmaengine_terminate_all (int ) ;
 int mmc_free_host (struct mmc_host*) ;
 struct pxamci_host* mmc_priv (struct mmc_host*) ;
 int mmc_remove_host (struct mmc_host*) ;
 struct mmc_host* platform_get_drvdata (struct platform_device*) ;
 int pxamci_stop_clock (struct pxamci_host*) ;
 int stub1 (int *,struct mmc_host*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int pxamci_remove(struct platform_device *pdev)
{
 struct mmc_host *mmc = platform_get_drvdata(pdev);

 if (mmc) {
  struct pxamci_host *host = mmc_priv(mmc);

  mmc_remove_host(mmc);

  if (host->pdata && host->pdata->exit)
   host->pdata->exit(&pdev->dev, mmc);

  pxamci_stop_clock(host);
  writel(TXFIFO_WR_REQ|RXFIFO_RD_REQ|CLK_IS_OFF|STOP_CMD|
         END_CMD_RES|PRG_DONE|DATA_TRAN_DONE,
         host->base + MMC_I_MASK);

  dmaengine_terminate_all(host->dma_chan_rx);
  dmaengine_terminate_all(host->dma_chan_tx);
  dma_release_channel(host->dma_chan_rx);
  dma_release_channel(host->dma_chan_tx);

  mmc_free_host(mmc);
 }

 return 0;
}
