
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int warm_boot_count; } ;


 int EIO ;
 int efx_ef10_get_warm_boot_count (struct efx_nic*) ;
 int efx_ef10_mcdi_reboot_detected (struct efx_nic*) ;

__attribute__((used)) static int efx_ef10_mcdi_poll_reboot(struct efx_nic *efx)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 int rc;

 rc = efx_ef10_get_warm_boot_count(efx);
 if (rc < 0) {





  return 0;
 }

 if (rc == nic_data->warm_boot_count)
  return 0;

 nic_data->warm_boot_count = rc;
 efx_ef10_mcdi_reboot_detected(efx);

 return -EIO;
}
