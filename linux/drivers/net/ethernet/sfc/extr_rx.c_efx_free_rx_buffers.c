
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_queue {int dummy; } ;
struct efx_rx_buffer {int * page; } ;


 struct efx_rx_buffer* efx_rx_buf_next (struct efx_rx_queue*,struct efx_rx_buffer*) ;
 int put_page (int *) ;

__attribute__((used)) static void efx_free_rx_buffers(struct efx_rx_queue *rx_queue,
    struct efx_rx_buffer *rx_buf,
    unsigned int num_bufs)
{
 do {
  if (rx_buf->page) {
   put_page(rx_buf->page);
   rx_buf->page = ((void*)0);
  }
  rx_buf = efx_rx_buf_next(rx_queue, rx_buf);
 } while (--num_bufs);
}
