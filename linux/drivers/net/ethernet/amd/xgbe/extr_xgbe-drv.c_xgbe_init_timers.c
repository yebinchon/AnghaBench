
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned int channel_count; struct xgbe_channel** channel; int service_timer; } ;
struct xgbe_channel {int tx_timer; int tx_ring; } ;


 int timer_setup (int *,int ,int ) ;
 int xgbe_service_timer ;
 int xgbe_tx_timer ;

__attribute__((used)) static void xgbe_init_timers(struct xgbe_prv_data *pdata)
{
 struct xgbe_channel *channel;
 unsigned int i;

 timer_setup(&pdata->service_timer, xgbe_service_timer, 0);

 for (i = 0; i < pdata->channel_count; i++) {
  channel = pdata->channel[i];
  if (!channel->tx_ring)
   break;

  timer_setup(&channel->tx_timer, xgbe_tx_timer, 0);
 }
}
