
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int (* vswitching_remove ) (struct efx_nic*) ;} ;


 int efx_remove_channels (struct efx_nic*) ;
 int efx_remove_filters (struct efx_nic*) ;
 int efx_remove_nic (struct efx_nic*) ;
 int efx_remove_port (struct efx_nic*) ;
 int stub1 (struct efx_nic*) ;

__attribute__((used)) static void efx_remove_all(struct efx_nic *efx)
{
 efx_remove_channels(efx);
 efx_remove_filters(efx);



 efx_remove_port(efx);
 efx_remove_nic(efx);
}
