
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int * vf; } ;


 int efx_ef10_sriov_free_vf_vports (struct efx_nic*) ;
 int kfree (int *) ;

__attribute__((used)) static void efx_ef10_sriov_free_vf_vswitching(struct efx_nic *efx)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;

 efx_ef10_sriov_free_vf_vports(efx);
 kfree(nic_data->vf);
 nic_data->vf = ((void*)0);
}
