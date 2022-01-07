
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_sw_desc {int dma_addr; struct page* page; } ;
struct page {int dummy; } ;
typedef int dma_addr_t ;



__attribute__((used)) static inline void set_rx_sw_desc(struct rx_sw_desc *sd, struct page *pg,
      dma_addr_t mapping)
{
 sd->page = pg;
 sd->dma_addr = mapping;
}
