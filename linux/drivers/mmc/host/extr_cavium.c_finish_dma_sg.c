
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mmc_data {int bytes_xfered; int blocks; int blksz; int sg_len; int sg; scalar_t__ error; } ;
struct cvm_mmc_host {int dev; scalar_t__ dma_base; } ;


 int BIT_ULL (int) ;
 int FIELD_GET (int ,int ) ;
 scalar_t__ MIO_EMM_DMA_FIFO_CFG (struct cvm_mmc_host*) ;
 int MIO_EMM_DMA_FIFO_CFG_COUNT ;
 int dev_err (int ,char*,int) ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int get_dma_dir (struct mmc_data*) ;
 int readq (scalar_t__) ;
 int writeq (int ,scalar_t__) ;

__attribute__((used)) static int finish_dma_sg(struct cvm_mmc_host *host, struct mmc_data *data)
{
 u64 fifo_cfg;
 int count;


 fifo_cfg = readq(host->dma_base + MIO_EMM_DMA_FIFO_CFG(host));
 count = FIELD_GET(MIO_EMM_DMA_FIFO_CFG_COUNT, fifo_cfg);
 if (count)
  dev_err(host->dev, "%u requests still pending\n", count);

 data->bytes_xfered = data->blocks * data->blksz;
 data->error = 0;


 writeq(BIT_ULL(16), host->dma_base + MIO_EMM_DMA_FIFO_CFG(host));
 dma_unmap_sg(host->dev, data->sg, data->sg_len, get_dma_dir(data));
 return 1;
}
