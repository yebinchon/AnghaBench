
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mmc_data {int flags; int * sg; int sg_len; } ;
struct cvm_mmc_host {scalar_t__ dma_base; scalar_t__ big_dma_addr; int dev; } ;


 int FIELD_PREP (int ,int) ;
 scalar_t__ MIO_EMM_DMA_ADR (struct cvm_mmc_host*) ;
 scalar_t__ MIO_EMM_DMA_CFG (struct cvm_mmc_host*) ;
 int MIO_EMM_DMA_CFG_ADR ;
 int MIO_EMM_DMA_CFG_EN ;
 int MIO_EMM_DMA_CFG_ENDIAN ;
 int MIO_EMM_DMA_CFG_RW ;
 int MIO_EMM_DMA_CFG_SIZE ;
 int MMC_DATA_WRITE ;
 int dma_map_sg (int ,int *,int ,int ) ;
 int get_dma_dir (struct mmc_data*) ;
 int pr_debug (char*,char*,int,int) ;
 int sg_dma_address (int *) ;
 int sg_dma_len (int *) ;
 int writeq (int,scalar_t__) ;

__attribute__((used)) static u64 prepare_dma_single(struct cvm_mmc_host *host, struct mmc_data *data)
{
 u64 dma_cfg, addr;
 int count, rw;

 count = dma_map_sg(host->dev, data->sg, data->sg_len,
      get_dma_dir(data));
 if (!count)
  return 0;

 rw = (data->flags & MMC_DATA_WRITE) ? 1 : 0;
 dma_cfg = FIELD_PREP(MIO_EMM_DMA_CFG_EN, 1) |
    FIELD_PREP(MIO_EMM_DMA_CFG_RW, rw);



 dma_cfg |= FIELD_PREP(MIO_EMM_DMA_CFG_SIZE,
         (sg_dma_len(&data->sg[0]) / 8) - 1);

 addr = sg_dma_address(&data->sg[0]);
 if (!host->big_dma_addr)
  dma_cfg |= FIELD_PREP(MIO_EMM_DMA_CFG_ADR, addr);
 writeq(dma_cfg, host->dma_base + MIO_EMM_DMA_CFG(host));

 pr_debug("[%s] sg_dma_len: %u  total sg_elem: %d\n",
   (rw) ? "W" : "R", sg_dma_len(&data->sg[0]), count);

 if (host->big_dma_addr)
  writeq(addr, host->dma_base + MIO_EMM_DMA_ADR(host));
 return addr;
}
