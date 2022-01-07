
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct nand_chip {int dummy; } ;
struct TYPE_7__ {int parent; } ;
struct mtd_info {TYPE_1__ dev; } ;
struct TYPE_10__ {int direction; int src_maxburst; int dst_maxburst; int device_fc; void* dst_addr_width; void* src_addr_width; void* dst_addr; void* src_addr; } ;
struct lpc32xx_nand_host {int sgl; TYPE_3__* dma_chan; int comp; TYPE_4__ dma_slave_config; } ;
struct dma_async_tx_descriptor {int * callback_param; int callback; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef void* dma_addr_t ;
struct TYPE_9__ {TYPE_2__* device; } ;
struct TYPE_8__ {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 int DMA_CTRL_ACK ;
 int DMA_PREP_INTERRUPT ;
 void* DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int ENXIO ;
 int dev_err (int ,char*) ;
 int dma_async_issue_pending (TYPE_3__*) ;
 int dma_map_sg (int ,int *,int,int ) ;
 int dma_unmap_sg (int ,int *,int,int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (TYPE_3__*,int *,int,int,int) ;
 scalar_t__ dmaengine_slave_config (TYPE_3__*,TYPE_4__*) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int init_completion (int *) ;
 int lpc32xx_dma_complete_func ;
 int msecs_to_jiffies (int) ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct lpc32xx_nand_host* nand_get_controller_data (struct nand_chip*) ;
 int sg_init_one (int *,void*,int) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int lpc32xx_xmit_dma(struct mtd_info *mtd, dma_addr_t dma,
       void *mem, int len, enum dma_transfer_direction dir)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct lpc32xx_nand_host *host = nand_get_controller_data(chip);
 struct dma_async_tx_descriptor *desc;
 int flags = DMA_CTRL_ACK | DMA_PREP_INTERRUPT;
 int res;

 host->dma_slave_config.direction = dir;
 host->dma_slave_config.src_addr = dma;
 host->dma_slave_config.dst_addr = dma;
 host->dma_slave_config.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 host->dma_slave_config.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 host->dma_slave_config.src_maxburst = 4;
 host->dma_slave_config.dst_maxburst = 4;

 host->dma_slave_config.device_fc = 0;
 if (dmaengine_slave_config(host->dma_chan, &host->dma_slave_config)) {
  dev_err(mtd->dev.parent, "Failed to setup DMA slave\n");
  return -ENXIO;
 }

 sg_init_one(&host->sgl, mem, len);

 res = dma_map_sg(host->dma_chan->device->dev, &host->sgl, 1,
    DMA_BIDIRECTIONAL);
 if (res != 1) {
  dev_err(mtd->dev.parent, "Failed to map sg list\n");
  return -ENXIO;
 }
 desc = dmaengine_prep_slave_sg(host->dma_chan, &host->sgl, 1, dir,
           flags);
 if (!desc) {
  dev_err(mtd->dev.parent, "Failed to prepare slave sg\n");
  goto out1;
 }

 init_completion(&host->comp);
 desc->callback = lpc32xx_dma_complete_func;
 desc->callback_param = &host->comp;

 dmaengine_submit(desc);
 dma_async_issue_pending(host->dma_chan);

 wait_for_completion_timeout(&host->comp, msecs_to_jiffies(1000));

 dma_unmap_sg(host->dma_chan->device->dev, &host->sgl, 1,
       DMA_BIDIRECTIONAL);

 return 0;
out1:
 dma_unmap_sg(host->dma_chan->device->dev, &host->sgl, 1,
       DMA_BIDIRECTIONAL);
 return -ENXIO;
}
