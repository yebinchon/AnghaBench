
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct gfar_rx_buff {scalar_t__ page_offset; struct page* page; int dma; } ;
struct gfar_priv_rx_q {int dev; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int PAGE_SIZE ;
 int __free_page (struct page*) ;
 struct page* dev_alloc_page () ;
 int dma_map_page (int ,struct page*,int ,int ,int ) ;
 int dma_mapping_error (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool gfar_new_page(struct gfar_priv_rx_q *rxq, struct gfar_rx_buff *rxb)
{
 struct page *page;
 dma_addr_t addr;

 page = dev_alloc_page();
 if (unlikely(!page))
  return 0;

 addr = dma_map_page(rxq->dev, page, 0, PAGE_SIZE, DMA_FROM_DEVICE);
 if (unlikely(dma_mapping_error(rxq->dev, addr))) {
  __free_page(page);

  return 0;
 }

 rxb->dma = addr;
 rxb->page = page;
 rxb->page_offset = 0;

 return 1;
}
