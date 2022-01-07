
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fsmc_nand_data {int dummy; } ;


 int DMA_TO_DEVICE ;
 int dma_xfer (struct fsmc_nand_data*,void*,int,int ) ;

__attribute__((used)) static void fsmc_write_buf_dma(struct fsmc_nand_data *host, const u8 *buf,
          int len)
{
 dma_xfer(host, (void *)buf, len, DMA_TO_DEVICE);
}
