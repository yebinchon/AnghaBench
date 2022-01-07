
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct efx_rx_queue {int slow_fill_count; } ;


 int efx_nic_generate_fill_event (struct efx_rx_queue*) ;
 struct efx_rx_queue* from_timer (int ,struct timer_list*,int ) ;
 struct efx_rx_queue* rx_queue ;
 int slow_fill ;

void efx_rx_slow_fill(struct timer_list *t)
{
 struct efx_rx_queue *rx_queue = from_timer(rx_queue, t, slow_fill);


 efx_nic_generate_fill_event(rx_queue);
 ++rx_queue->slow_fill_count;
}
