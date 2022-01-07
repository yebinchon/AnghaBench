
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4740_mmc_host {int dma_rx; int dma_tx; int use_dma; } ;


 int dma_release_channel (int ) ;

__attribute__((used)) static void jz4740_mmc_release_dma_channels(struct jz4740_mmc_host *host)
{
 if (!host->use_dma)
  return;

 dma_release_channel(host->dma_tx);
 dma_release_channel(host->dma_rx);
}
