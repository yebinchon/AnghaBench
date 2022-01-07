
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {scalar_t__ vf_count; } ;



bool efx_siena_sriov_wanted(struct efx_nic *efx)
{
 return efx->vf_count != 0;
}
