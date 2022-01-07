
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct moxart_host {scalar_t__ data_len; scalar_t__ data_remain; int timeout; int dma_complete; struct dma_async_tx_descriptor* tx_desc; int mmc; struct dma_chan* dma_chan_rx; struct dma_chan* dma_chan_tx; } ;
struct mmc_data {scalar_t__ bytes_xfered; int flags; int sg_len; int sg; } ;
struct dma_chan {TYPE_1__* device; } ;
struct dma_async_tx_descriptor {struct moxart_host* callback_param; int callback; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_CTRL_ACK ;
 scalar_t__ DMA_DEV_TO_MEM ;
 scalar_t__ DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int MMC_DATA_WRITE ;
 int dev_err (int ,char*) ;
 int dma_async_issue_pending (struct dma_chan*) ;
 scalar_t__ dma_map_sg (int ,int ,int ,int ) ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (struct dma_chan*,int ,scalar_t__,scalar_t__,int) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int mmc_dev (int ) ;
 int mmc_get_dma_dir (struct mmc_data*) ;
 int moxart_dma_complete ;
 long wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static void moxart_transfer_dma(struct mmc_data *data, struct moxart_host *host)
{
 u32 len, dir_slave;
 long dma_time;
 struct dma_async_tx_descriptor *desc = ((void*)0);
 struct dma_chan *dma_chan;

 if (host->data_len == data->bytes_xfered)
  return;

 if (data->flags & MMC_DATA_WRITE) {
  dma_chan = host->dma_chan_tx;
  dir_slave = DMA_MEM_TO_DEV;
 } else {
  dma_chan = host->dma_chan_rx;
  dir_slave = DMA_DEV_TO_MEM;
 }

 len = dma_map_sg(dma_chan->device->dev, data->sg,
    data->sg_len, mmc_get_dma_dir(data));

 if (len > 0) {
  desc = dmaengine_prep_slave_sg(dma_chan, data->sg,
            len, dir_slave,
            DMA_PREP_INTERRUPT |
            DMA_CTRL_ACK);
 } else {
  dev_err(mmc_dev(host->mmc), "dma_map_sg returned zero length\n");
 }

 if (desc) {
  host->tx_desc = desc;
  desc->callback = moxart_dma_complete;
  desc->callback_param = host;
  dmaengine_submit(desc);
  dma_async_issue_pending(dma_chan);
 }

 data->bytes_xfered += host->data_remain;

 dma_time = wait_for_completion_interruptible_timeout(
     &host->dma_complete, host->timeout);

 dma_unmap_sg(dma_chan->device->dev,
       data->sg, data->sg_len,
       mmc_get_dma_dir(data));
}
