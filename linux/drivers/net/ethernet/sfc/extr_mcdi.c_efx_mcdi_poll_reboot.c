
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* type; int mcdi; } ;
struct TYPE_2__ {int (* mcdi_poll_reboot ) (struct efx_nic*) ;} ;


 int stub1 (struct efx_nic*) ;

int efx_mcdi_poll_reboot(struct efx_nic *efx)
{
 if (!efx->mcdi)
  return 0;

 return efx->type->mcdi_poll_reboot(efx);
}
