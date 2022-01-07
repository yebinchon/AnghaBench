
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {unsigned int vf_count; } ;


 int efx_ef10_sriov_assign_vf_vport (struct efx_nic*,unsigned int) ;
 int efx_ef10_sriov_free_vf_vswitching (struct efx_nic*) ;

__attribute__((used)) static int efx_ef10_sriov_restore_vf_vswitching(struct efx_nic *efx)
{
 unsigned int i;
 int rc;

 for (i = 0; i < efx->vf_count; i++) {
  rc = efx_ef10_sriov_assign_vf_vport(efx, i);
  if (rc)
   goto fail;
 }

 return 0;
fail:
 efx_ef10_sriov_free_vf_vswitching(efx);
 return rc;
}
