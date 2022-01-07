
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fsmc_nand_data {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int dma_xfer (struct fsmc_nand_data*,int *,int,int ) ;

__attribute__((used)) static void fsmc_read_buf_dma(struct fsmc_nand_data *host, u8 *buf,
         int len)
{
 dma_xfer(host, buf, len, DMA_FROM_DEVICE);
}
