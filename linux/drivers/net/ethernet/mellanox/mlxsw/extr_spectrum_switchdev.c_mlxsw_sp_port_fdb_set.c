
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {struct net_device* dev; } ;
struct switchdev_notifier_fdb_info {int addr; int vid; TYPE_1__ info; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port_vlan {int vid; int fid; } ;
struct mlxsw_sp_port {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_bridge_port {int lag_id; int system_port; int lagged; struct mlxsw_sp_bridge_device* bridge_device; } ;
struct mlxsw_sp_bridge_device {int dummy; } ;
struct mlxsw_sp {int bridge; } ;


 int EINVAL ;
 struct mlxsw_sp_bridge_port* mlxsw_sp_bridge_port_find (int ,struct net_device*) ;
 int mlxsw_sp_fid_index (int ) ;
 int mlxsw_sp_port_fdb_uc_lag_op (struct mlxsw_sp*,int ,int ,int ,int ,int,int) ;
 int mlxsw_sp_port_fdb_uc_op (struct mlxsw_sp*,int ,int ,int ,int,int) ;
 struct mlxsw_sp_port_vlan* mlxsw_sp_port_vlan_find_by_bridge (struct mlxsw_sp_port*,struct mlxsw_sp_bridge_device*,int ) ;

__attribute__((used)) static int
mlxsw_sp_port_fdb_set(struct mlxsw_sp_port *mlxsw_sp_port,
        struct switchdev_notifier_fdb_info *fdb_info, bool adding)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 struct net_device *orig_dev = fdb_info->info.dev;
 struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan;
 struct mlxsw_sp_bridge_device *bridge_device;
 struct mlxsw_sp_bridge_port *bridge_port;
 u16 fid_index, vid;

 bridge_port = mlxsw_sp_bridge_port_find(mlxsw_sp->bridge, orig_dev);
 if (!bridge_port)
  return -EINVAL;

 bridge_device = bridge_port->bridge_device;
 mlxsw_sp_port_vlan = mlxsw_sp_port_vlan_find_by_bridge(mlxsw_sp_port,
              bridge_device,
              fdb_info->vid);
 if (!mlxsw_sp_port_vlan)
  return 0;

 fid_index = mlxsw_sp_fid_index(mlxsw_sp_port_vlan->fid);
 vid = mlxsw_sp_port_vlan->vid;

 if (!bridge_port->lagged)
  return mlxsw_sp_port_fdb_uc_op(mlxsw_sp,
            bridge_port->system_port,
            fdb_info->addr, fid_index,
            adding, 0);
 else
  return mlxsw_sp_port_fdb_uc_lag_op(mlxsw_sp,
         bridge_port->lag_id,
         fdb_info->addr, fid_index,
         vid, adding, 0);
}
