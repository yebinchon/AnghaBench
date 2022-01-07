
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_data {int dummy; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
struct TYPE_2__ {struct dma_async_tx_descriptor* data_desc; } ;
struct atmel_mci {TYPE_1__ dma; struct dma_chan* data_chan; } ;


 int dma_async_issue_pending (struct dma_chan*) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;

__attribute__((used)) static void
atmci_submit_data_dma(struct atmel_mci *host, struct mmc_data *data)
{
 struct dma_chan *chan = host->data_chan;
 struct dma_async_tx_descriptor *desc = host->dma.data_desc;

 if (chan) {
  dmaengine_submit(desc);
  dma_async_issue_pending(chan);
 }
}
