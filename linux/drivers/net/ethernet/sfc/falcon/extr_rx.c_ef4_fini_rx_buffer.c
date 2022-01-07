
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_rx_queue {int efx; } ;
struct ef4_rx_buffer {int flags; int * page; } ;


 int EF4_RX_BUF_LAST_IN_PAGE ;
 int ef4_free_rx_buffers (struct ef4_rx_queue*,struct ef4_rx_buffer*,int) ;
 int ef4_unmap_rx_buffer (int ,struct ef4_rx_buffer*) ;
 int put_page (int *) ;

__attribute__((used)) static void ef4_fini_rx_buffer(struct ef4_rx_queue *rx_queue,
          struct ef4_rx_buffer *rx_buf)
{

 if (rx_buf->page)
  put_page(rx_buf->page);


 if (rx_buf->flags & EF4_RX_BUF_LAST_IN_PAGE) {
  ef4_unmap_rx_buffer(rx_queue->efx, rx_buf);
  ef4_free_rx_buffers(rx_queue, rx_buf, 1);
 }
 rx_buf->page = ((void*)0);
}
