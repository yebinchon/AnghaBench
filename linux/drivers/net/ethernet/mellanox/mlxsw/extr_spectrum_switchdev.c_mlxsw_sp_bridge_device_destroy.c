
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_bridge_device {int mids_list; int ports_list; scalar_t__ vlan_enabled; int list; int dev; } ;
struct mlxsw_sp_bridge {int vlan_enabled_exists; int mlxsw_sp; } ;


 int WARN_ON (int) ;
 int kfree (struct mlxsw_sp_bridge_device*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int mlxsw_sp_bridge_device_rifs_destroy (int ,int ) ;

__attribute__((used)) static void
mlxsw_sp_bridge_device_destroy(struct mlxsw_sp_bridge *bridge,
          struct mlxsw_sp_bridge_device *bridge_device)
{
 mlxsw_sp_bridge_device_rifs_destroy(bridge->mlxsw_sp,
         bridge_device->dev);
 list_del(&bridge_device->list);
 if (bridge_device->vlan_enabled)
  bridge->vlan_enabled_exists = 0;
 WARN_ON(!list_empty(&bridge_device->ports_list));
 WARN_ON(!list_empty(&bridge_device->mids_list));
 kfree(bridge_device);
}
