
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_host {int dma_chan; int dma_desc; } ;


 int dma_async_issue_pending (int ) ;
 int dmaengine_submit (int ) ;

__attribute__((used)) static void bcm2835_start_dma(struct bcm2835_host *host)
{
 dmaengine_submit(host->dma_desc);
 dma_async_issue_pending(host->dma_chan);
}
