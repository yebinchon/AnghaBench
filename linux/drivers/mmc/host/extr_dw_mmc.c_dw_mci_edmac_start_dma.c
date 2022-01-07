
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct scatterlist {int dummy; } ;
struct dw_mci {int fifo_reg; int regs; int phy_regs; TYPE_3__* dms; TYPE_2__* slot; TYPE_1__* data; int dev; } ;
struct dma_slave_config {int dst_addr; int src_addr; int dst_maxburst; int src_maxburst; int direction; void* src_addr_width; void* dst_addr_width; } ;
struct dma_async_tx_descriptor {void* callback_param; int callback; } ;
struct TYPE_6__ {int ch; } ;
struct TYPE_5__ {int mmc; } ;
struct TYPE_4__ {int sg_len; int flags; struct scatterlist* sg; } ;


 int DMA_CTRL_ACK ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 void* DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int DMA_TO_DEVICE ;
 int EBUSY ;
 int FIFOTH ;
 int MMC_DATA_WRITE ;
 int dev_err (int ,char*) ;
 int dma_async_issue_pending (int ) ;
 int dma_sync_sg_for_device (int ,struct scatterlist*,int,int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (int ,struct scatterlist*,unsigned int,int ,int) ;
 int dmaengine_slave_config (int ,struct dma_slave_config*) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int dw_mci_dmac_complete_dma ;
 int mci_readl (struct dw_mci*,int ) ;
 int mmc_dev (int ) ;

__attribute__((used)) static int dw_mci_edmac_start_dma(struct dw_mci *host,
         unsigned int sg_len)
{
 struct dma_slave_config cfg;
 struct dma_async_tx_descriptor *desc = ((void*)0);
 struct scatterlist *sgl = host->data->sg;
 static const u32 mszs[] = {1, 4, 8, 16, 32, 64, 128, 256};
 u32 sg_elems = host->data->sg_len;
 u32 fifoth_val;
 u32 fifo_offset = host->fifo_reg - host->regs;
 int ret = 0;


 cfg.dst_addr = host->phy_regs + fifo_offset;
 cfg.src_addr = cfg.dst_addr;
 cfg.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 cfg.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;


 fifoth_val = mci_readl(host, FIFOTH);
 cfg.dst_maxburst = mszs[(fifoth_val >> 28) & 0x7];
 cfg.src_maxburst = cfg.dst_maxburst;

 if (host->data->flags & MMC_DATA_WRITE)
  cfg.direction = DMA_MEM_TO_DEV;
 else
  cfg.direction = DMA_DEV_TO_MEM;

 ret = dmaengine_slave_config(host->dms->ch, &cfg);
 if (ret) {
  dev_err(host->dev, "Failed to config edmac.\n");
  return -EBUSY;
 }

 desc = dmaengine_prep_slave_sg(host->dms->ch, sgl,
           sg_len, cfg.direction,
           DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 if (!desc) {
  dev_err(host->dev, "Can't prepare slave sg.\n");
  return -EBUSY;
 }


 desc->callback = dw_mci_dmac_complete_dma;
 desc->callback_param = (void *)host;
 dmaengine_submit(desc);


 if (host->data->flags & MMC_DATA_WRITE)
  dma_sync_sg_for_device(mmc_dev(host->slot->mmc), sgl,
           sg_elems, DMA_TO_DEVICE);

 dma_async_issue_pending(host->dms->ch);

 return 0;
}
