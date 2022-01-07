
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int filter_sem; scalar_t__ filter_state; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_vlan {int list; int vid; } ;
struct efx_ef10_nic_data {int vlan_lock; } ;


 int WARN_ON (int) ;
 int down_write (int *) ;
 int efx_ef10_filter_del_vlan (struct efx_nic*,int ) ;
 int kfree (struct efx_ef10_vlan*) ;
 int list_del (int *) ;
 int mutex_is_locked (int *) ;
 int up_write (int *) ;

__attribute__((used)) static void efx_ef10_del_vlan_internal(struct efx_nic *efx,
           struct efx_ef10_vlan *vlan)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;

 WARN_ON(!mutex_is_locked(&nic_data->vlan_lock));

 if (efx->filter_state) {
  down_write(&efx->filter_sem);
  efx_ef10_filter_del_vlan(efx, vlan->vid);
  up_write(&efx->filter_sem);
 }

 list_del(&vlan->list);
 kfree(vlan);
}
