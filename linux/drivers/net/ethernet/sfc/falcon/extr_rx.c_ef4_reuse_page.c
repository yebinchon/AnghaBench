
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct ef4_rx_queue {unsigned int page_remove; unsigned int page_ptr_mask; unsigned int page_add; int page_recycle_failed; int page_recycle_count; struct page** page_ring; struct ef4_nic* efx; } ;
struct ef4_rx_page_state {int dma_addr; } ;
struct ef4_nic {int rx_buffer_order; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int PAGE_SIZE ;
 int dma_unmap_page (int *,int ,int,int ) ;
 struct ef4_rx_page_state* page_address (struct page*) ;
 int page_count (struct page*) ;
 int put_page (struct page*) ;

__attribute__((used)) static struct page *ef4_reuse_page(struct ef4_rx_queue *rx_queue)
{
 struct ef4_nic *efx = rx_queue->efx;
 struct page *page;
 struct ef4_rx_page_state *state;
 unsigned index;

 index = rx_queue->page_remove & rx_queue->page_ptr_mask;
 page = rx_queue->page_ring[index];
 if (page == ((void*)0))
  return ((void*)0);

 rx_queue->page_ring[index] = ((void*)0);

 if (rx_queue->page_remove != rx_queue->page_add)
  ++rx_queue->page_remove;


 if (page_count(page) == 1) {
  ++rx_queue->page_recycle_count;
  return page;
 } else {
  state = page_address(page);
  dma_unmap_page(&efx->pci_dev->dev, state->dma_addr,
          PAGE_SIZE << efx->rx_buffer_order,
          DMA_FROM_DEVICE);
  put_page(page);
  ++rx_queue->page_recycle_failed;
 }

 return ((void*)0);
}
