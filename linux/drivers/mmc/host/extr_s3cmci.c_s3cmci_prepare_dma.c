
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3cmci_host {int mmc; int dma; scalar_t__ base; int prescaler; scalar_t__ sdidata; TYPE_1__* mem; } ;
struct mmc_data {int flags; int sg_len; int sg; } ;
struct dma_slave_config {int direction; int dst_addr_width; int src_addr_width; scalar_t__ dst_addr; scalar_t__ src_addr; } ;
struct dma_async_tx_descriptor {struct s3cmci_host* callback_param; int callback; } ;
struct TYPE_2__ {scalar_t__ start; } ;


 int BOTH_DIR ;
 int BUG_ON (int) ;
 int DMA_CTRL_ACK ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int ENOMEM ;
 int MMC_DATA_WRITE ;
 scalar_t__ S3C2410_SDIPRE ;
 int dma_async_issue_pending (int ) ;
 int dma_map_sg (int ,int ,int ,int ) ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (int ,int ,int ,int ,int) ;
 int dmaengine_slave_config (int ,struct dma_slave_config*) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int mmc_dev (int ) ;
 int mmc_get_dma_dir (struct mmc_data*) ;
 int s3cmci_dma_done_callback ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int s3cmci_prepare_dma(struct s3cmci_host *host, struct mmc_data *data)
{
 int rw = data->flags & MMC_DATA_WRITE;
 struct dma_async_tx_descriptor *desc;
 struct dma_slave_config conf = {
  .src_addr = host->mem->start + host->sdidata,
  .dst_addr = host->mem->start + host->sdidata,
  .src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES,
  .dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES,
 };

 BUG_ON((data->flags & BOTH_DIR) == BOTH_DIR);


 writel(host->prescaler, host->base + S3C2410_SDIPRE);

 if (!rw)
  conf.direction = DMA_DEV_TO_MEM;
 else
  conf.direction = DMA_MEM_TO_DEV;

 dma_map_sg(mmc_dev(host->mmc), data->sg, data->sg_len,
     mmc_get_dma_dir(data));

 dmaengine_slave_config(host->dma, &conf);
 desc = dmaengine_prep_slave_sg(host->dma, data->sg, data->sg_len,
  conf.direction,
  DMA_CTRL_ACK | DMA_PREP_INTERRUPT);
 if (!desc)
  goto unmap_exit;
 desc->callback = s3cmci_dma_done_callback;
 desc->callback_param = host;
 dmaengine_submit(desc);
 dma_async_issue_pending(host->dma);

 return 0;

unmap_exit:
 dma_unmap_sg(mmc_dev(host->mmc), data->sg, data->sg_len,
       mmc_get_dma_dir(data));
 return -ENOMEM;
}
