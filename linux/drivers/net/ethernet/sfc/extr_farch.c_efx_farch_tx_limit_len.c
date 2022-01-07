
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {int dummy; } ;
typedef int dma_addr_t ;


 int EFX_PAGE_SIZE ;
 unsigned int min (unsigned int,unsigned int) ;

unsigned int efx_farch_tx_limit_len(struct efx_tx_queue *tx_queue,
        dma_addr_t dma_addr, unsigned int len)
{

 unsigned int limit = (~dma_addr & (EFX_PAGE_SIZE - 1)) + 1;

 len = min(limit, len);

 return len;
}
