
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_sw_desc {int dma_addr; } ;


 int RX_UNMAPPED_BUF ;

__attribute__((used)) static inline bool is_buf_mapped(const struct rx_sw_desc *d)
{
 return !(d->dma_addr & RX_UNMAPPED_BUF);
}
