
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int EVB_PORT_ID_ASSIGNED ;
 int efx_ef10_vadaptor_free (struct efx_nic*,int ) ;

void efx_ef10_vswitching_remove_vf(struct efx_nic *efx)
{
 efx_ef10_vadaptor_free(efx, EVB_PORT_ID_ASSIGNED);
}
