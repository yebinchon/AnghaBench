
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;
struct bcm2835_host {int * dma_chan; } ;


 int bcm2835_reset_internal (struct bcm2835_host*) ;
 int dmaengine_terminate_sync (int *) ;
 struct bcm2835_host* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static void bcm2835_reset(struct mmc_host *mmc)
{
 struct bcm2835_host *host = mmc_priv(mmc);

 if (host->dma_chan)
  dmaengine_terminate_sync(host->dma_chan);
 host->dma_chan = ((void*)0);
 bcm2835_reset_internal(host);
}
