
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* type; int net_dev; } ;
struct efx_channel {int eventq_init; scalar_t__ eventq_read_ptr; int channel; struct efx_nic* efx; } ;
struct TYPE_2__ {int (* push_irq_moderation ) (struct efx_channel*) ;} ;


 int EFX_WARN_ON_PARANOID (int) ;
 int drv ;
 int efx_nic_init_eventq (struct efx_channel*) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int ) ;
 int stub1 (struct efx_channel*) ;

__attribute__((used)) static int efx_init_eventq(struct efx_channel *channel)
{
 struct efx_nic *efx = channel->efx;
 int rc;

 EFX_WARN_ON_PARANOID(channel->eventq_init);

 netif_dbg(efx, drv, efx->net_dev,
    "chan %d init event queue\n", channel->channel);

 rc = efx_nic_init_eventq(channel);
 if (rc == 0) {
  efx->type->push_irq_moderation(channel);
  channel->eventq_read_ptr = 0;
  channel->eventq_init = 1;
 }
 return rc;
}
