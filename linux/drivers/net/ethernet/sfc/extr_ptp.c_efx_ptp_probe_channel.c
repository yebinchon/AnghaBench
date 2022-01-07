
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {int net_dev; } ;
struct TYPE_2__ {scalar_t__ core_index; } ;
struct efx_channel {TYPE_1__ rx_queue; scalar_t__ irq_moderation_us; struct efx_nic* efx; } ;


 int EPERM ;
 int drv ;
 int efx_ptp_probe (struct efx_nic*,struct efx_channel*) ;
 int netif_warn (struct efx_nic*,int ,int ,char*,int) ;

__attribute__((used)) static int efx_ptp_probe_channel(struct efx_channel *channel)
{
 struct efx_nic *efx = channel->efx;
 int rc;

 channel->irq_moderation_us = 0;
 channel->rx_queue.core_index = 0;

 rc = efx_ptp_probe(efx, channel);





 if (rc && rc != -EPERM)
  netif_warn(efx, drv, efx->net_dev,
      "Failed to probe PTP, rc=%d\n", rc);
 return 0;
}
