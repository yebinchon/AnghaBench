
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int mac_addr; } ;
struct siena_vf {int status_lock; TYPE_1__ addr; } ;
struct siena_nic_data {struct siena_vf* vf; } ;
struct efx_nic {int vf_init_count; struct siena_nic_data* nic_data; } ;


 int EINVAL ;
 int __efx_siena_sriov_update_vf_addr (struct siena_vf*) ;
 int ether_addr_copy (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int efx_siena_sriov_set_vf_mac(struct efx_nic *efx, int vf_i, u8 *mac)
{
 struct siena_nic_data *nic_data = efx->nic_data;
 struct siena_vf *vf;

 if (vf_i >= efx->vf_init_count)
  return -EINVAL;
 vf = nic_data->vf + vf_i;

 mutex_lock(&vf->status_lock);
 ether_addr_copy(vf->addr.mac_addr, mac);
 __efx_siena_sriov_update_vf_addr(vf);
 mutex_unlock(&vf->status_lock);

 return 0;
}
