
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_sw_desc {int dma_addr; struct page* page; } ;
struct page {int dummy; } ;
typedef int dma_addr_t ;



__attribute__((used)) static inline void set_rx_sw_desc(struct rx_sw_desc *sdesc, struct page *page,
      dma_addr_t dma_addr)
{
 sdesc->page = page;
 sdesc->dma_addr = dma_addr;
}
