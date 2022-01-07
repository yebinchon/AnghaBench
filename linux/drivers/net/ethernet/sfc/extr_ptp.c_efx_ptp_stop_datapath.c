
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int (* ptp_set_ts_sync_events ) (struct efx_nic*,int,int) ;} ;


 int efx_ptp_stop (struct efx_nic*) ;
 int stub1 (struct efx_nic*,int,int) ;

void efx_ptp_stop_datapath(struct efx_nic *efx)
{

 if (efx->type->ptp_set_ts_sync_events)
  efx->type->ptp_set_ts_sync_events(efx, 0, 1);
 efx_ptp_stop(efx);
}
