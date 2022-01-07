
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_rx_queue {int dummy; } ;


 int EF4_CHANNEL_MAGIC_FILL (struct ef4_rx_queue*) ;
 int ef4_farch_magic_event (int ,int ) ;
 int ef4_rx_queue_channel (struct ef4_rx_queue*) ;

void ef4_farch_rx_defer_refill(struct ef4_rx_queue *rx_queue)
{
 ef4_farch_magic_event(ef4_rx_queue_channel(rx_queue),
         EF4_CHANNEL_MAGIC_FILL(rx_queue));
}
