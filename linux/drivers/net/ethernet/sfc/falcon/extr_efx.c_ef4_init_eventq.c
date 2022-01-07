
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {TYPE_1__* type; int net_dev; } ;
struct ef4_channel {int eventq_init; scalar_t__ eventq_read_ptr; int channel; struct ef4_nic* efx; } ;
struct TYPE_2__ {int (* push_irq_moderation ) (struct ef4_channel*) ;} ;


 int EF4_WARN_ON_PARANOID (int) ;
 int drv ;
 int ef4_nic_init_eventq (struct ef4_channel*) ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*,int ) ;
 int stub1 (struct ef4_channel*) ;

__attribute__((used)) static int ef4_init_eventq(struct ef4_channel *channel)
{
 struct ef4_nic *efx = channel->efx;
 int rc;

 EF4_WARN_ON_PARANOID(channel->eventq_init);

 netif_dbg(efx, drv, efx->net_dev,
    "chan %d init event queue\n", channel->channel);

 rc = ef4_nic_init_eventq(channel);
 if (rc == 0) {
  efx->type->push_irq_moderation(channel);
  channel->eventq_read_ptr = 0;
  channel->eventq_init = 1;
 }
 return rc;
}
