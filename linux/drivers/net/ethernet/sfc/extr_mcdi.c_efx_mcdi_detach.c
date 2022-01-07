
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efx_nic {TYPE_2__* mcdi; } ;
struct TYPE_3__ {scalar_t__ state; } ;
struct TYPE_4__ {TYPE_1__ iface; } ;


 int BUG_ON (int) ;
 scalar_t__ MCDI_STATE_QUIESCENT ;
 int efx_mcdi_drv_attach (struct efx_nic*,int,int *) ;

void efx_mcdi_detach(struct efx_nic *efx)
{
 if (!efx->mcdi)
  return;

 BUG_ON(efx->mcdi->iface.state != MCDI_STATE_QUIESCENT);


 efx_mcdi_drv_attach(efx, 0, ((void*)0));
}
