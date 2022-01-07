
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; } ;
struct omap_hsmmc_host {int dma_ch; int mmc; scalar_t__ mapbase; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_data {int blksz; int sg_len; int flags; struct scatterlist* sg; } ;
struct dma_slave_config {int src_maxburst; int dst_maxburst; int dst_addr_width; int src_addr_width; scalar_t__ dst_addr; scalar_t__ src_addr; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {struct omap_hsmmc_host* callback_param; int callback; } ;


 int BUG_ON (int) ;
 int DMA_CTRL_ACK ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int EINVAL ;
 int MMC_DATA_WRITE ;
 scalar_t__ OMAP_HSMMC_DATA ;
 int dev_err (int ,char*) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (struct dma_chan*,struct scatterlist*,int,int ,int) ;
 int dmaengine_slave_config (struct dma_chan*,struct dma_slave_config*) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int mmc_dev (int ) ;
 int omap_hsmmc_dma_callback ;
 struct dma_chan* omap_hsmmc_get_dma_chan (struct omap_hsmmc_host*,struct mmc_data*) ;
 int omap_hsmmc_pre_dma_transfer (struct omap_hsmmc_host*,struct mmc_data*,int *,struct dma_chan*) ;

__attribute__((used)) static int omap_hsmmc_setup_dma_transfer(struct omap_hsmmc_host *host,
     struct mmc_request *req)
{
 struct dma_async_tx_descriptor *tx;
 int ret = 0, i;
 struct mmc_data *data = req->data;
 struct dma_chan *chan;
 struct dma_slave_config cfg = {
  .src_addr = host->mapbase + OMAP_HSMMC_DATA,
  .dst_addr = host->mapbase + OMAP_HSMMC_DATA,
  .src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES,
  .dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES,
  .src_maxburst = data->blksz / 4,
  .dst_maxburst = data->blksz / 4,
 };


 for (i = 0; i < data->sg_len; i++) {
  struct scatterlist *sgl;

  sgl = data->sg + i;
  if (sgl->length % data->blksz)
   return -EINVAL;
 }
 if ((data->blksz % 4) != 0)



  return -EINVAL;

 BUG_ON(host->dma_ch != -1);

 chan = omap_hsmmc_get_dma_chan(host, data);

 ret = dmaengine_slave_config(chan, &cfg);
 if (ret)
  return ret;

 ret = omap_hsmmc_pre_dma_transfer(host, data, ((void*)0), chan);
 if (ret)
  return ret;

 tx = dmaengine_prep_slave_sg(chan, data->sg, data->sg_len,
  data->flags & MMC_DATA_WRITE ? DMA_MEM_TO_DEV : DMA_DEV_TO_MEM,
  DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 if (!tx) {
  dev_err(mmc_dev(host->mmc), "prep_slave_sg() failed\n");

  return -1;
 }

 tx->callback = omap_hsmmc_dma_callback;
 tx->callback_param = host;


 dmaengine_submit(tx);

 host->dma_ch = 1;

 return 0;
}
