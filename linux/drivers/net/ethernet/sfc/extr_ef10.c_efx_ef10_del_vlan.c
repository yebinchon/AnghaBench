
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct efx_nic {int net_dev; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_vlan {int dummy; } ;
struct efx_ef10_nic_data {int vlan_lock; } ;


 int ENOENT ;
 int drv ;
 int efx_ef10_del_vlan_internal (struct efx_nic*,struct efx_ef10_vlan*) ;
 struct efx_ef10_vlan* efx_ef10_find_vlan (struct efx_nic*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_err (struct efx_nic*,int ,int ,char*,scalar_t__) ;

__attribute__((used)) static int efx_ef10_del_vlan(struct efx_nic *efx, u16 vid)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 struct efx_ef10_vlan *vlan;
 int rc = 0;





 if (vid == 0)
  return 0;

 mutex_lock(&nic_data->vlan_lock);

 vlan = efx_ef10_find_vlan(efx, vid);
 if (!vlan) {
  netif_err(efx, drv, efx->net_dev,
     "VLAN %u to be deleted not found\n", vid);
  rc = -ENOENT;
 } else {
  efx_ef10_del_vlan_internal(efx, vlan);
 }

 mutex_unlock(&nic_data->vlan_lock);

 return rc;
}
