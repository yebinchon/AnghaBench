
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct efx_nic {unsigned int vf_count; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {TYPE_1__* vf; } ;
struct ef10_vf {int dummy; } ;
struct TYPE_3__ {int vlan; int * efx; int mac; } ;


 int EFX_EF10_NO_VLAN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int efx_ef10_sriov_assign_vf_vport (struct efx_nic*,unsigned int) ;
 int efx_ef10_sriov_free_vf_vports (struct efx_nic*) ;
 int eth_random_addr (int ) ;
 TYPE_1__* kcalloc (unsigned int,int,int ) ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static int efx_ef10_sriov_alloc_vf_vswitching(struct efx_nic *efx)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 unsigned int i;
 int rc;

 nic_data->vf = kcalloc(efx->vf_count, sizeof(struct ef10_vf),
          GFP_KERNEL);
 if (!nic_data->vf)
  return -ENOMEM;

 for (i = 0; i < efx->vf_count; i++) {
  eth_random_addr(nic_data->vf[i].mac);
  nic_data->vf[i].efx = ((void*)0);
  nic_data->vf[i].vlan = EFX_EF10_NO_VLAN;

  rc = efx_ef10_sriov_assign_vf_vport(efx, i);
  if (rc)
   goto fail;
 }

 return 0;
fail:
 efx_ef10_sriov_free_vf_vports(efx);
 kfree(nic_data->vf);
 nic_data->vf = ((void*)0);
 return rc;
}
