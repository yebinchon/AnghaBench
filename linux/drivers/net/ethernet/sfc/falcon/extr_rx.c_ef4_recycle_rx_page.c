
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct ef4_rx_queue {unsigned int page_add; unsigned int page_ptr_mask; unsigned int page_remove; int page_recycle_full; struct page** page_ring; struct ef4_nic* efx; } ;
struct ef4_rx_buffer {int flags; struct page* page; } ;
struct ef4_nic {int dummy; } ;
struct ef4_channel {int dummy; } ;


 int EF4_RX_BUF_LAST_IN_PAGE ;
 struct ef4_rx_queue* ef4_channel_get_rx_queue (struct ef4_channel*) ;
 int ef4_unmap_rx_buffer (struct ef4_nic*,struct ef4_rx_buffer*) ;
 int put_page (struct page*) ;

__attribute__((used)) static void ef4_recycle_rx_page(struct ef4_channel *channel,
    struct ef4_rx_buffer *rx_buf)
{
 struct page *page = rx_buf->page;
 struct ef4_rx_queue *rx_queue = ef4_channel_get_rx_queue(channel);
 struct ef4_nic *efx = rx_queue->efx;
 unsigned index;


 if (!(rx_buf->flags & EF4_RX_BUF_LAST_IN_PAGE))
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
 ef4_unmap_rx_buffer(efx, rx_buf);
 put_page(rx_buf->page);
}
