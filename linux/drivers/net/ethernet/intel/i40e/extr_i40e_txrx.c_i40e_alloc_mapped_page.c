
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct i40e_rx_buffer {scalar_t__ pagecnt_bias; int page_offset; struct page* page; int dma; } ;
struct TYPE_2__ {int alloc_page_failed; int page_reuse_count; } ;
struct i40e_ring {TYPE_1__ rx_stats; int dev; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int I40E_RX_DMA_ATTR ;
 scalar_t__ USHRT_MAX ;
 int __free_pages (struct page*,int ) ;
 struct page* dev_alloc_pages (int ) ;
 int dma_map_page_attrs (int ,struct page*,int ,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int i40e_rx_offset (struct i40e_ring*) ;
 int i40e_rx_pg_order (struct i40e_ring*) ;
 int i40e_rx_pg_size (struct i40e_ring*) ;
 scalar_t__ likely (struct page*) ;
 int page_ref_add (struct page*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool i40e_alloc_mapped_page(struct i40e_ring *rx_ring,
       struct i40e_rx_buffer *bi)
{
 struct page *page = bi->page;
 dma_addr_t dma;


 if (likely(page)) {
  rx_ring->rx_stats.page_reuse_count++;
  return 1;
 }


 page = dev_alloc_pages(i40e_rx_pg_order(rx_ring));
 if (unlikely(!page)) {
  rx_ring->rx_stats.alloc_page_failed++;
  return 0;
 }


 dma = dma_map_page_attrs(rx_ring->dev, page, 0,
     i40e_rx_pg_size(rx_ring),
     DMA_FROM_DEVICE,
     I40E_RX_DMA_ATTR);




 if (dma_mapping_error(rx_ring->dev, dma)) {
  __free_pages(page, i40e_rx_pg_order(rx_ring));
  rx_ring->rx_stats.alloc_page_failed++;
  return 0;
 }

 bi->dma = dma;
 bi->page = page;
 bi->page_offset = i40e_rx_offset(rx_ring);
 page_ref_add(page, USHRT_MAX - 1);
 bi->pagecnt_bias = USHRT_MAX;

 return 1;
}
