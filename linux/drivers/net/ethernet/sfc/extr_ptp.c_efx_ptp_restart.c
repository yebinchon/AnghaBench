
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* ptp_data; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;


 int efx_ptp_start (struct efx_nic*) ;

__attribute__((used)) static int efx_ptp_restart(struct efx_nic *efx)
{
 if (efx->ptp_data && efx->ptp_data->enabled)
  return efx_ptp_start(efx);
 return 0;
}
