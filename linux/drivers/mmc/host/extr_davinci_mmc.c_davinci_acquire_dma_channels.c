
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_davinci_host {void* dma_rx; void* dma_tx; int mmc; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (int ,char*) ;
 int dma_release_channel (void*) ;
 void* dma_request_chan (int ,char*) ;
 int mmc_dev (int ) ;

__attribute__((used)) static int davinci_acquire_dma_channels(struct mmc_davinci_host *host)
{
 host->dma_tx = dma_request_chan(mmc_dev(host->mmc), "tx");
 if (IS_ERR(host->dma_tx)) {
  dev_err(mmc_dev(host->mmc), "Can't get dma_tx channel\n");
  return PTR_ERR(host->dma_tx);
 }

 host->dma_rx = dma_request_chan(mmc_dev(host->mmc), "rx");
 if (IS_ERR(host->dma_rx)) {
  dev_err(mmc_dev(host->mmc), "Can't get dma_rx channel\n");
  dma_release_channel(host->dma_tx);
  return PTR_ERR(host->dma_rx);
 }

 return 0;
}
