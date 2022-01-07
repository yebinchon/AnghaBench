
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_bridge_device {int ports_list; } ;
struct mlxsw_sp_bridge {int dummy; } ;


 scalar_t__ list_empty (int *) ;
 int mlxsw_sp_bridge_device_destroy (struct mlxsw_sp_bridge*,struct mlxsw_sp_bridge_device*) ;

__attribute__((used)) static void
mlxsw_sp_bridge_device_put(struct mlxsw_sp_bridge *bridge,
      struct mlxsw_sp_bridge_device *bridge_device)
{
 if (list_empty(&bridge_device->ports_list))
  mlxsw_sp_bridge_device_destroy(bridge, bridge_device);
}
