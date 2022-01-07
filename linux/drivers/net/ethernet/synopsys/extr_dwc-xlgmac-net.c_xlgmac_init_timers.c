
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {unsigned int channel_count; struct xlgmac_channel* channel_head; } ;
struct xlgmac_channel {int tx_timer; int tx_ring; } ;


 int timer_setup (int *,int ,int ) ;
 int xlgmac_tx_timer ;

__attribute__((used)) static void xlgmac_init_timers(struct xlgmac_pdata *pdata)
{
 struct xlgmac_channel *channel;
 unsigned int i;

 channel = pdata->channel_head;
 for (i = 0; i < pdata->channel_count; i++, channel++) {
  if (!channel->tx_ring)
   break;

  timer_setup(&channel->tx_timer, xlgmac_tx_timer, 0);
 }
}
