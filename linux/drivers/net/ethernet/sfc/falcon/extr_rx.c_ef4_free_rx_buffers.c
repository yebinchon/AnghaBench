
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_rx_queue {int dummy; } ;
struct ef4_rx_buffer {int * page; } ;


 struct ef4_rx_buffer* ef4_rx_buf_next (struct ef4_rx_queue*,struct ef4_rx_buffer*) ;
 int put_page (int *) ;

__attribute__((used)) static void ef4_free_rx_buffers(struct ef4_rx_queue *rx_queue,
    struct ef4_rx_buffer *rx_buf,
    unsigned int num_bufs)
{
 do {
  if (rx_buf->page) {
   put_page(rx_buf->page);
   rx_buf->page = ((void*)0);
  }
  rx_buf = ef4_rx_buf_next(rx_queue, rx_buf);
 } while (--num_bufs);
}
