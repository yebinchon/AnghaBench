
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mmcif_host {int dma_active; struct dma_chan* chan_rx; struct dma_chan* chan_tx; } ;
struct dma_chan {int dummy; } ;


 int BUF_ACC_DMAREN ;
 int BUF_ACC_DMAWEN ;
 int MMCIF_CE_BUF_ACC ;
 int dma_release_channel (struct dma_chan*) ;
 int sh_mmcif_bitclr (struct sh_mmcif_host*,int ,int) ;

__attribute__((used)) static void sh_mmcif_release_dma(struct sh_mmcif_host *host)
{
 sh_mmcif_bitclr(host, MMCIF_CE_BUF_ACC, BUF_ACC_DMAREN | BUF_ACC_DMAWEN);

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

 host->dma_active = 0;
}
