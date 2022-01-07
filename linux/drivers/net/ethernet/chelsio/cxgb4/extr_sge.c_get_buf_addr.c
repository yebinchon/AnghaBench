
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_sw_desc {int dma_addr; } ;
typedef int dma_addr_t ;


 scalar_t__ RX_BUF_FLAGS ;

__attribute__((used)) static inline dma_addr_t get_buf_addr(const struct rx_sw_desc *d)
{
 return d->dma_addr & ~(dma_addr_t)RX_BUF_FLAGS;
}
