
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int efx_ef10_vadaptor_alloc_set_features (struct efx_nic*) ;

int efx_ef10_vswitching_probe_vf(struct efx_nic *efx)
{
 return efx_ef10_vadaptor_alloc_set_features(efx);
}
