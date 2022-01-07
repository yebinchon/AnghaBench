
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usdhi6_host {int dma_active; struct dma_chan* chan_rx; struct dma_chan* chan_tx; } ;
struct dma_chan {int dummy; } ;


 int dma_release_channel (struct dma_chan*) ;

__attribute__((used)) static void usdhi6_dma_release(struct usdhi6_host *host)
{
 host->dma_active = 0;
 if (host->chan_tx) {
  struct dma_chan *chan = host->chan_tx;
  host->chan_tx = ((void*)0);
  dma_release_channel(chan);
 }
 if (host->chan_rx) {
  struct dma_chan *chan = host->chan_rx;
  host->chan_rx = ((void*)0);
  dma_release_channel(chan);
 }
}
