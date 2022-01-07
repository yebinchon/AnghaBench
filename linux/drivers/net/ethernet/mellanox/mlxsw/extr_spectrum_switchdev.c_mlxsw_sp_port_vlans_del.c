
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {struct net_device* orig_dev; } ;
struct switchdev_obj_port_vlan {scalar_t__ vid_begin; scalar_t__ vid_end; TYPE_1__ obj; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_bridge_port {TYPE_2__* bridge_device; } ;
struct mlxsw_sp {int bridge; } ;
struct TYPE_4__ {int vlan_enabled; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ WARN_ON (int) ;
 struct mlxsw_sp_bridge_port* mlxsw_sp_bridge_port_find (int ,struct net_device*) ;
 int mlxsw_sp_bridge_port_vlan_del (struct mlxsw_sp_port*,struct mlxsw_sp_bridge_port*,scalar_t__) ;
 scalar_t__ netif_is_bridge_master (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_port_vlans_del(struct mlxsw_sp_port *mlxsw_sp_port,
       const struct switchdev_obj_port_vlan *vlan)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 struct net_device *orig_dev = vlan->obj.orig_dev;
 struct mlxsw_sp_bridge_port *bridge_port;
 u16 vid;

 if (netif_is_bridge_master(orig_dev))
  return -EOPNOTSUPP;

 bridge_port = mlxsw_sp_bridge_port_find(mlxsw_sp->bridge, orig_dev);
 if (WARN_ON(!bridge_port))
  return -EINVAL;

 if (!bridge_port->bridge_device->vlan_enabled)
  return 0;

 for (vid = vlan->vid_begin; vid <= vlan->vid_end; vid++)
  mlxsw_sp_bridge_port_vlan_del(mlxsw_sp_port, bridge_port, vid);

 return 0;
}
