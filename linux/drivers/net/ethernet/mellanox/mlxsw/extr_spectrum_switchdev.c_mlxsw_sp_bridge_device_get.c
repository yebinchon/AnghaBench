
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_bridge_device {int dummy; } ;
struct mlxsw_sp_bridge {int dummy; } ;


 struct mlxsw_sp_bridge_device* mlxsw_sp_bridge_device_create (struct mlxsw_sp_bridge*,struct net_device*) ;
 struct mlxsw_sp_bridge_device* mlxsw_sp_bridge_device_find (struct mlxsw_sp_bridge*,struct net_device*) ;

__attribute__((used)) static struct mlxsw_sp_bridge_device *
mlxsw_sp_bridge_device_get(struct mlxsw_sp_bridge *bridge,
      struct net_device *br_dev)
{
 struct mlxsw_sp_bridge_device *bridge_device;

 bridge_device = mlxsw_sp_bridge_device_find(bridge, br_dev);
 if (bridge_device)
  return bridge_device;

 return mlxsw_sp_bridge_device_create(bridge, br_dev);
}
