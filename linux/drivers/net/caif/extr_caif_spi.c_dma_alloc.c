
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfspi {int dummy; } ;
typedef int dma_addr_t ;


 int GFP_KERNEL ;
 int SPI_DMA_BUF_LEN ;
 void* kmalloc (int ,int ) ;

__attribute__((used)) static inline void *dma_alloc(struct cfspi *cfspi, dma_addr_t *daddr)
{
 return kmalloc(SPI_DMA_BUF_LEN, GFP_KERNEL);
}
