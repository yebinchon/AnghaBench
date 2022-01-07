
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int tci; } ;
struct siena_vf {int status_lock; TYPE_1__ addr; } ;
struct siena_nic_data {struct siena_vf* vf; } ;
struct efx_nic {int vf_init_count; struct siena_nic_data* nic_data; } ;


 int EINVAL ;
 int VLAN_PRIO_SHIFT ;
 int VLAN_VID_MASK ;
 int __efx_siena_sriov_update_vf_addr (struct siena_vf*) ;
 int htons (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int efx_siena_sriov_set_vf_vlan(struct efx_nic *efx, int vf_i,
    u16 vlan, u8 qos)
{
 struct siena_nic_data *nic_data = efx->nic_data;
 struct siena_vf *vf;
 u16 tci;

 if (vf_i >= efx->vf_init_count)
  return -EINVAL;
 vf = nic_data->vf + vf_i;

 mutex_lock(&vf->status_lock);
 tci = (vlan & VLAN_VID_MASK) | ((qos & 0x7) << VLAN_PRIO_SHIFT);
 vf->addr.tci = htons(tci);
 __efx_siena_sriov_update_vf_addr(vf);
 mutex_unlock(&vf->status_lock);

 return 0;
}
