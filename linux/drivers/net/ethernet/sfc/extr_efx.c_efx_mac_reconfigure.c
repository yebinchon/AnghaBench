
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {int filter_sem; TYPE_1__* type; } ;
struct TYPE_2__ {int (* reconfigure_mac ) (struct efx_nic*) ;} ;


 int down_read (int *) ;
 int stub1 (struct efx_nic*) ;
 int up_read (int *) ;

void efx_mac_reconfigure(struct efx_nic *efx)
{
 down_read(&efx->filter_sem);
 efx->type->reconfigure_mac(efx);
 up_read(&efx->filter_sem);
}
