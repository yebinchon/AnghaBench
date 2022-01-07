
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct efx_nic {int net_dev; int filter_sem; } ;
struct efx_ef10_filter_vlan {int dummy; } ;


 int drv ;
 int efx_ef10_filter_del_vlan_internal (struct efx_nic*,struct efx_ef10_filter_vlan*) ;
 struct efx_ef10_filter_vlan* efx_ef10_filter_find_vlan (struct efx_nic*,int ) ;
 int efx_rwsem_assert_write_locked (int *) ;
 int netif_err (struct efx_nic*,int ,int ,char*,int ) ;

__attribute__((used)) static void efx_ef10_filter_del_vlan(struct efx_nic *efx, u16 vid)
{
 struct efx_ef10_filter_vlan *vlan;


 if (!efx_rwsem_assert_write_locked(&efx->filter_sem))
  return;

 vlan = efx_ef10_filter_find_vlan(efx, vid);
 if (!vlan) {
  netif_err(efx, drv, efx->net_dev,
     "VLAN %u not found in filter state\n", vid);
  return;
 }

 efx_ef10_filter_del_vlan_internal(efx, vlan);
}
