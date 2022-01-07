
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct enetc_rx_swbd {int page_offset; struct page* page; int dma; } ;
struct enetc_bdr {int dev; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int ENETC_RXB_PAD ;
 int PAGE_SIZE ;
 int __free_page (struct page*) ;
 struct page* dev_alloc_page () ;
 int dma_map_page (int ,struct page*,int ,int ,int ) ;
 int dma_mapping_error (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool enetc_new_page(struct enetc_bdr *rx_ring,
      struct enetc_rx_swbd *rx_swbd)
{
 struct page *page;
 dma_addr_t addr;

 page = dev_alloc_page();
 if (unlikely(!page))
  return 0;

 addr = dma_map_page(rx_ring->dev, page, 0, PAGE_SIZE, DMA_FROM_DEVICE);
 if (unlikely(dma_mapping_error(rx_ring->dev, addr))) {
  __free_page(page);

  return 0;
 }

 rx_swbd->dma = addr;
 rx_swbd->page = page;
 rx_swbd->page_offset = ENETC_RXB_PAD;

 return 1;
}
