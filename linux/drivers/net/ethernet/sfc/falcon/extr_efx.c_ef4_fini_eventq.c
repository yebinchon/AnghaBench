
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_channel {int eventq_init; int channel; TYPE_1__* efx; } ;
struct TYPE_2__ {int net_dev; } ;


 int drv ;
 int ef4_nic_fini_eventq (struct ef4_channel*) ;
 int netif_dbg (TYPE_1__*,int ,int ,char*,int ) ;

__attribute__((used)) static void ef4_fini_eventq(struct ef4_channel *channel)
{
 if (!channel->eventq_init)
  return;

 netif_dbg(channel->efx, drv, channel->efx->net_dev,
    "chan %d fini event queue\n", channel->channel);

 ef4_nic_fini_eventq(channel);
 channel->eventq_init = 0;
}
