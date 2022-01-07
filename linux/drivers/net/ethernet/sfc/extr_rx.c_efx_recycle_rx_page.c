
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct efx_rx_queue {unsigned int page_add; unsigned int page_ptr_mask; unsigned int page_remove; int page_recycle_full; struct page** page_ring; struct efx_nic* efx; } ;
struct efx_rx_buffer {int flags; struct page* page; } ;
struct efx_nic {int dummy; } ;
struct efx_channel {int dummy; } ;


 int EFX_RX_BUF_LAST_IN_PAGE ;
 struct efx_rx_queue* efx_channel_get_rx_queue (struct efx_channel*) ;
 int efx_unmap_rx_buffer (struct efx_nic*,struct efx_rx_buffer*) ;
 int put_page (struct page*) ;

__attribute__((used)) static void efx_recycle_rx_page(struct efx_channel *channel,
    struct efx_rx_buffer *rx_buf)
{
 struct page *page = rx_buf->page;
 struct efx_rx_queue *rx_queue = efx_channel_get_rx_queue(channel);
 struct efx_nic *efx = rx_queue->efx;
 unsigned index;


 if (!(rx_buf->flags & EFX_RX_BUF_LAST_IN_PAGE))
  return;

 index = rx_queue->page_add & rx_queue->page_ptr_mask;
 if (rx_queue->page_ring[index] == ((void*)0)) {
  unsigned read_index = rx_queue->page_remove &
   rx_queue->page_ptr_mask;





  if (read_index == index)
   ++rx_queue->page_remove;
  rx_queue->page_ring[index] = page;
  ++rx_queue->page_add;
  return;
 }
 ++rx_queue->page_recycle_full;
 efx_unmap_rx_buffer(efx, rx_buf);
 put_page(rx_buf->page);
}
