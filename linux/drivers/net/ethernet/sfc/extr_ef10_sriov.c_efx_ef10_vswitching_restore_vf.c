
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int must_probe_vswitching; } ;


 int EVB_PORT_ID_ASSIGNED ;
 int efx_ef10_vadaptor_free (struct efx_nic*,int ) ;

int efx_ef10_vswitching_restore_vf(struct efx_nic *efx)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 int rc;

 if (!nic_data->must_probe_vswitching)
  return 0;

 rc = efx_ef10_vadaptor_free(efx, EVB_PORT_ID_ASSIGNED);
 if (rc)
  return rc;

 nic_data->must_probe_vswitching = 0;
 return 0;
}
