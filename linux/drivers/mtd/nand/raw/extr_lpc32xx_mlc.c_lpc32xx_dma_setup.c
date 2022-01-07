
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int parent; } ;
struct mtd_info {TYPE_2__ dev; } ;
struct TYPE_6__ {int src_maxburst; int dst_maxburst; int device_fc; void* dst_addr; void* src_addr; void* dst_addr_width; void* src_addr_width; int direction; } ;
struct lpc32xx_nand_host {int dma_chan; TYPE_3__ dma_slave_config; int io_base_phy; TYPE_1__* pdata; int nand_chip; } ;
typedef int dma_cap_mask_t ;
struct TYPE_4__ {int dma_filter; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_SLAVE ;
 void* DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int EBUSY ;
 int ENOENT ;
 int ENXIO ;
 void* MLC_BUFF (int ) ;
 int dev_err (int ,char*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_release_channel (int ) ;
 int dma_request_channel (int ,int ,char*) ;
 scalar_t__ dmaengine_slave_config (int ,TYPE_3__*) ;
 struct mtd_info* nand_to_mtd (int *) ;

__attribute__((used)) static int lpc32xx_dma_setup(struct lpc32xx_nand_host *host)
{
 struct mtd_info *mtd = nand_to_mtd(&host->nand_chip);
 dma_cap_mask_t mask;

 if (!host->pdata || !host->pdata->dma_filter) {
  dev_err(mtd->dev.parent, "no DMA platform data\n");
  return -ENOENT;
 }

 dma_cap_zero(mask);
 dma_cap_set(DMA_SLAVE, mask);
 host->dma_chan = dma_request_channel(mask, host->pdata->dma_filter,
          "nand-mlc");
 if (!host->dma_chan) {
  dev_err(mtd->dev.parent, "Failed to request DMA channel\n");
  return -EBUSY;
 }






 host->dma_slave_config.direction = DMA_DEV_TO_MEM;
 host->dma_slave_config.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 host->dma_slave_config.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 host->dma_slave_config.src_maxburst = 128;
 host->dma_slave_config.dst_maxburst = 128;

 host->dma_slave_config.device_fc = 0;
 host->dma_slave_config.src_addr = MLC_BUFF(host->io_base_phy);
 host->dma_slave_config.dst_addr = MLC_BUFF(host->io_base_phy);
 if (dmaengine_slave_config(host->dma_chan, &host->dma_slave_config)) {
  dev_err(mtd->dev.parent, "Failed to setup DMA slave\n");
  goto out1;
 }

 return 0;
out1:
 dma_release_channel(host->dma_chan);
 return -ENXIO;
}
