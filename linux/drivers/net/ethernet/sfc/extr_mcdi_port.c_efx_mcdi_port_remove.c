
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {int stats_buffer; TYPE_1__* phy_op; } ;
struct TYPE_2__ {int (* remove ) (struct efx_nic*) ;} ;


 int efx_nic_free_buffer (struct efx_nic*,int *) ;
 int stub1 (struct efx_nic*) ;

void efx_mcdi_port_remove(struct efx_nic *efx)
{
 efx->phy_op->remove(efx);
 efx_nic_free_buffer(efx, &efx->stats_buffer);
}
