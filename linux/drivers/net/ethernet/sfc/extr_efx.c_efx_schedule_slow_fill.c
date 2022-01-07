
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_queue {int slow_fill; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;

void efx_schedule_slow_fill(struct efx_rx_queue *rx_queue)
{
 mod_timer(&rx_queue->slow_fill, jiffies + msecs_to_jiffies(10));
}
