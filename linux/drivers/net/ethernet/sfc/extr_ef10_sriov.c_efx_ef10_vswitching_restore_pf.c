
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int must_probe_vswitching; } ;


 int efx_ef10_sriov_restore_vf_vswitching (struct efx_nic*) ;
 int efx_ef10_vswitching_probe_pf (struct efx_nic*) ;

int efx_ef10_vswitching_restore_pf(struct efx_nic *efx)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 int rc;

 if (!nic_data->must_probe_vswitching)
  return 0;

 rc = efx_ef10_vswitching_probe_pf(efx);
 if (rc)
  goto fail;

 rc = efx_ef10_sriov_restore_vf_vswitching(efx);
 if (rc)
  goto fail;

 nic_data->must_probe_vswitching = 0;
fail:
 return rc;
}
