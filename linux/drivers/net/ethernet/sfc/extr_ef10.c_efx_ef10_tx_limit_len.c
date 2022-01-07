
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {int dummy; } ;
typedef unsigned int dma_addr_t ;


 int BUILD_BUG_ON (int) ;
 unsigned int EFX_EF10_MAX_TX_DESCRIPTOR_LEN ;
 unsigned int EFX_PAGE_SIZE ;

__attribute__((used)) static unsigned int efx_ef10_tx_limit_len(struct efx_tx_queue *tx_queue,
       dma_addr_t dma_addr, unsigned int len)
{
 if (len > EFX_EF10_MAX_TX_DESCRIPTOR_LEN) {




  dma_addr_t end = dma_addr + EFX_EF10_MAX_TX_DESCRIPTOR_LEN;

  BUILD_BUG_ON(EFX_EF10_MAX_TX_DESCRIPTOR_LEN < EFX_PAGE_SIZE);
  len = (end & (~(EFX_PAGE_SIZE - 1))) - dma_addr;
 }

 return len;
}
