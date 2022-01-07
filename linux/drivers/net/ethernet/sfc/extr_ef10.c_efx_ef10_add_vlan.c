
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct efx_nic {int mac_lock; int filter_sem; scalar_t__ filter_state; int net_dev; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_vlan {int list; scalar_t__ vid; } ;
struct efx_ef10_nic_data {int vlan_lock; int vlan_list; } ;


 int EALREADY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int down_write (int *) ;
 int drv ;
 int efx_ef10_filter_add_vlan (struct efx_nic*,scalar_t__) ;
 struct efx_ef10_vlan* efx_ef10_find_vlan (struct efx_nic*,scalar_t__) ;
 int kfree (struct efx_ef10_vlan*) ;
 struct efx_ef10_vlan* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_warn (struct efx_nic*,int ,int ,char*,scalar_t__) ;
 int up_write (int *) ;

__attribute__((used)) static int efx_ef10_add_vlan(struct efx_nic *efx, u16 vid)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 struct efx_ef10_vlan *vlan;
 int rc;

 mutex_lock(&nic_data->vlan_lock);

 vlan = efx_ef10_find_vlan(efx, vid);
 if (vlan) {



  if (vid == 0)
   goto done_unlock;
  netif_warn(efx, drv, efx->net_dev,
      "VLAN %u already added\n", vid);
  rc = -EALREADY;
  goto fail_exist;
 }

 rc = -ENOMEM;
 vlan = kzalloc(sizeof(*vlan), GFP_KERNEL);
 if (!vlan)
  goto fail_alloc;

 vlan->vid = vid;

 list_add_tail(&vlan->list, &nic_data->vlan_list);

 if (efx->filter_state) {
  mutex_lock(&efx->mac_lock);
  down_write(&efx->filter_sem);
  rc = efx_ef10_filter_add_vlan(efx, vlan->vid);
  up_write(&efx->filter_sem);
  mutex_unlock(&efx->mac_lock);
  if (rc)
   goto fail_filter_add_vlan;
 }

done_unlock:
 mutex_unlock(&nic_data->vlan_lock);
 return 0;

fail_filter_add_vlan:
 list_del(&vlan->list);
 kfree(vlan);
fail_alloc:
fail_exist:
 mutex_unlock(&nic_data->vlan_lock);
 return rc;
}
