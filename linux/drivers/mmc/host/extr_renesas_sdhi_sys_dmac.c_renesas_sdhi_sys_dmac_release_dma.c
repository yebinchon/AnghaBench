
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int * bounce_buf; struct dma_chan* chan_rx; struct dma_chan* chan_tx; } ;
struct dma_chan {int dummy; } ;


 int dma_release_channel (struct dma_chan*) ;
 int free_pages (unsigned long,int ) ;

__attribute__((used)) static void renesas_sdhi_sys_dmac_release_dma(struct tmio_mmc_host *host)
{
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
 if (host->bounce_buf) {
  free_pages((unsigned long)host->bounce_buf, 0);
  host->bounce_buf = ((void*)0);
 }
}
