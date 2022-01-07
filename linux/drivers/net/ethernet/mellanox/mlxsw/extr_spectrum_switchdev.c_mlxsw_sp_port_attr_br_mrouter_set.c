
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_trans {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_bridge_device {int mrouter; } ;
struct mlxsw_sp {int bridge; } ;


 struct mlxsw_sp_bridge_device* mlxsw_sp_bridge_device_find (int ,struct net_device*) ;
 int mlxsw_sp_bridge_mrouter_update_mdb (struct mlxsw_sp*,struct mlxsw_sp_bridge_device*,int) ;
 scalar_t__ switchdev_trans_ph_prepare (struct switchdev_trans*) ;

__attribute__((used)) static int
mlxsw_sp_port_attr_br_mrouter_set(struct mlxsw_sp_port *mlxsw_sp_port,
      struct switchdev_trans *trans,
      struct net_device *orig_dev,
      bool is_mrouter)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 struct mlxsw_sp_bridge_device *bridge_device;

 if (switchdev_trans_ph_prepare(trans))
  return 0;




 bridge_device = mlxsw_sp_bridge_device_find(mlxsw_sp->bridge, orig_dev);
 if (!bridge_device)
  return 0;

 if (bridge_device->mrouter != is_mrouter)
  mlxsw_sp_bridge_mrouter_update_mdb(mlxsw_sp, bridge_device,
         is_mrouter);
 bridge_device->mrouter = is_mrouter;
 return 0;
}
