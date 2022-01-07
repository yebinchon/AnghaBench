
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned int channel_count; struct xgbe_channel** channel; int service_timer; } ;
struct xgbe_channel {int tx_timer; int tx_ring; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static void xgbe_stop_timers(struct xgbe_prv_data *pdata)
{
 struct xgbe_channel *channel;
 unsigned int i;

 del_timer_sync(&pdata->service_timer);

 for (i = 0; i < pdata->channel_count; i++) {
  channel = pdata->channel[i];
  if (!channel->tx_ring)
   break;

  del_timer_sync(&channel->tx_timer);
 }
}
