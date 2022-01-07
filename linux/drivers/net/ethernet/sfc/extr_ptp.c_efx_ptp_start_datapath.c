
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* type; int net_dev; } ;
struct TYPE_2__ {int (* ptp_set_ts_sync_events ) (struct efx_nic*,int,int) ;} ;


 int drv ;
 scalar_t__ efx_ptp_restart (struct efx_nic*) ;
 int netif_err (struct efx_nic*,int ,int ,char*) ;
 int stub1 (struct efx_nic*,int,int) ;

void efx_ptp_start_datapath(struct efx_nic *efx)
{
 if (efx_ptp_restart(efx))
  netif_err(efx, drv, efx->net_dev, "Failed to restart PTP.\n");

 if (efx->type->ptp_set_ts_sync_events)
  efx->type->ptp_set_ts_sync_events(efx, 1, 1);
}
