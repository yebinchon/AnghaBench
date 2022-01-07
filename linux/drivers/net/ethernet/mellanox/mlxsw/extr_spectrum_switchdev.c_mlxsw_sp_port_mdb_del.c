
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {struct net_device* orig_dev; } ;
struct switchdev_obj_port_mdb {int addr; int vid; TYPE_1__ obj; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port_vlan {int fid; } ;
struct mlxsw_sp_port {struct net_device* dev; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_mid {int dummy; } ;
struct mlxsw_sp_bridge_port {struct mlxsw_sp_bridge_device* bridge_device; } ;
struct mlxsw_sp_bridge_device {int dummy; } ;
struct mlxsw_sp {int bridge; } ;


 int EINVAL ;
 struct mlxsw_sp_mid* __mlxsw_sp_mc_get (struct mlxsw_sp_bridge_device*,int ,int ) ;
 int __mlxsw_sp_port_mdb_del (struct mlxsw_sp_port*,struct mlxsw_sp_bridge_port*,struct mlxsw_sp_mid*) ;
 struct mlxsw_sp_bridge_port* mlxsw_sp_bridge_port_find (int ,struct net_device*) ;
 int mlxsw_sp_fid_index (int ) ;
 struct mlxsw_sp_port_vlan* mlxsw_sp_port_vlan_find_by_bridge (struct mlxsw_sp_port*,struct mlxsw_sp_bridge_device*,int ) ;
 int netdev_err (struct net_device*,char*) ;

__attribute__((used)) static int mlxsw_sp_port_mdb_del(struct mlxsw_sp_port *mlxsw_sp_port,
     const struct switchdev_obj_port_mdb *mdb)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 struct net_device *orig_dev = mdb->obj.orig_dev;
 struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan;
 struct mlxsw_sp_bridge_device *bridge_device;
 struct net_device *dev = mlxsw_sp_port->dev;
 struct mlxsw_sp_bridge_port *bridge_port;
 struct mlxsw_sp_mid *mid;
 u16 fid_index;

 bridge_port = mlxsw_sp_bridge_port_find(mlxsw_sp->bridge, orig_dev);
 if (!bridge_port)
  return 0;

 bridge_device = bridge_port->bridge_device;
 mlxsw_sp_port_vlan = mlxsw_sp_port_vlan_find_by_bridge(mlxsw_sp_port,
              bridge_device,
              mdb->vid);
 if (!mlxsw_sp_port_vlan)
  return 0;

 fid_index = mlxsw_sp_fid_index(mlxsw_sp_port_vlan->fid);

 mid = __mlxsw_sp_mc_get(bridge_device, mdb->addr, fid_index);
 if (!mid) {
  netdev_err(dev, "Unable to remove port from MC DB\n");
  return -EINVAL;
 }

 return __mlxsw_sp_port_mdb_del(mlxsw_sp_port, bridge_port, mid);
}
