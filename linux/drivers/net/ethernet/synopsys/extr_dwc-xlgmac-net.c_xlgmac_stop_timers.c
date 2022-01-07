
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {unsigned int channel_count; struct xlgmac_channel* channel_head; } ;
struct xlgmac_channel {int tx_timer; int tx_ring; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static void xlgmac_stop_timers(struct xlgmac_pdata *pdata)
{
 struct xlgmac_channel *channel;
 unsigned int i;

 channel = pdata->channel_head;
 for (i = 0; i < pdata->channel_count; i++, channel++) {
  if (!channel->tx_ring)
   break;

  del_timer_sync(&channel->tx_timer);
 }
}
