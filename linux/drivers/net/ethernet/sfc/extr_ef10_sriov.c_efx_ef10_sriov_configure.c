
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int efx_ef10_pci_sriov_disable (struct efx_nic*,int) ;
 int efx_ef10_pci_sriov_enable (struct efx_nic*,int) ;

int efx_ef10_sriov_configure(struct efx_nic *efx, int num_vfs)
{
 if (num_vfs == 0)
  return efx_ef10_pci_sriov_disable(efx, 0);
 else
  return efx_ef10_pci_sriov_enable(efx, num_vfs);
}
