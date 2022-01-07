
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct efx_rx_queue {int removed_count; int added_count; int ptr_mask; int page_ptr_mask; struct page** page_ring; scalar_t__ buffer; int slow_fill; struct efx_nic* efx; } ;
struct efx_rx_page_state {int dma_addr; } ;
struct efx_rx_buffer {int dummy; } ;
struct efx_nic {int rx_buffer_order; TYPE_1__* pci_dev; int net_dev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int PAGE_SIZE ;
 int del_timer_sync (int *) ;
 int dma_unmap_page (int *,int ,int,int ) ;
 int drv ;
 int efx_fini_rx_buffer (struct efx_rx_queue*,struct efx_rx_buffer*) ;
 struct efx_rx_buffer* efx_rx_buffer (struct efx_rx_queue*,unsigned int) ;
 int efx_rx_queue_index (struct efx_rx_queue*) ;
 int kfree (struct page**) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int ) ;
 struct efx_rx_page_state* page_address (struct page*) ;
 int put_page (struct page*) ;

void efx_fini_rx_queue(struct efx_rx_queue *rx_queue)
{
 int i;
 struct efx_nic *efx = rx_queue->efx;
 struct efx_rx_buffer *rx_buf;

 netif_dbg(rx_queue->efx, drv, rx_queue->efx->net_dev,
    "shutting down RX queue %d\n", efx_rx_queue_index(rx_queue));

 del_timer_sync(&rx_queue->slow_fill);


 if (rx_queue->buffer) {
  for (i = rx_queue->removed_count; i < rx_queue->added_count;
       i++) {
   unsigned index = i & rx_queue->ptr_mask;
   rx_buf = efx_rx_buffer(rx_queue, index);
   efx_fini_rx_buffer(rx_queue, rx_buf);
  }
 }


 for (i = 0; i <= rx_queue->page_ptr_mask; i++) {
  struct page *page = rx_queue->page_ring[i];
  struct efx_rx_page_state *state;

  if (page == ((void*)0))
   continue;

  state = page_address(page);
  dma_unmap_page(&efx->pci_dev->dev, state->dma_addr,
          PAGE_SIZE << efx->rx_buffer_order,
          DMA_FROM_DEVICE);
  put_page(page);
 }
 kfree(rx_queue->page_ring);
 rx_queue->page_ring = ((void*)0);
}
