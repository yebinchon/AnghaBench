
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_rx_queue {int dummy; } ;
struct ef4_rx_buffer {int dummy; } ;
struct ef4_channel {int dummy; } ;


 struct ef4_rx_queue* ef4_channel_get_rx_queue (struct ef4_channel*) ;
 int ef4_free_rx_buffers (struct ef4_rx_queue*,struct ef4_rx_buffer*,unsigned int) ;
 int ef4_recycle_rx_pages (struct ef4_channel*,struct ef4_rx_buffer*,unsigned int) ;

__attribute__((used)) static void ef4_discard_rx_packet(struct ef4_channel *channel,
      struct ef4_rx_buffer *rx_buf,
      unsigned int n_frags)
{
 struct ef4_rx_queue *rx_queue = ef4_channel_get_rx_queue(channel);

 ef4_recycle_rx_pages(channel, rx_buf, n_frags);

 ef4_free_rx_buffers(rx_queue, rx_buf, n_frags);
}
