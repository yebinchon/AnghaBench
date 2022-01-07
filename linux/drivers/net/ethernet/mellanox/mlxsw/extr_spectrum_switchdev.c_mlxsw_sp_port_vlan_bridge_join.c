
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_port_vlan {struct mlxsw_sp_bridge_port* bridge_port; int bridge_vlan_node; int vid; struct mlxsw_sp_port* mlxsw_sp_port; } ;
struct mlxsw_sp_port {TYPE_1__* mlxsw_sp; } ;
struct mlxsw_sp_bridge_vlan {int port_vlan_list; } ;
struct mlxsw_sp_bridge_port {int flags; int dev; int stp_state; } ;
struct TYPE_2__ {int bridge; } ;


 int BR_LEARNING ;
 int BR_STATE_DISABLED ;
 int ENOMEM ;
 int list_add (int *,int *) ;
 int mlxsw_sp_bridge_port_get (int ,int ) ;
 struct mlxsw_sp_bridge_vlan* mlxsw_sp_bridge_vlan_get (struct mlxsw_sp_bridge_port*,int ) ;
 int mlxsw_sp_port_vid_learning_set (struct mlxsw_sp_port*,int ,int) ;
 int mlxsw_sp_port_vid_stp_set (struct mlxsw_sp_port*,int ,int ) ;
 int mlxsw_sp_port_vlan_fid_join (struct mlxsw_sp_port_vlan*,struct mlxsw_sp_bridge_port*,struct netlink_ext_ack*) ;
 int mlxsw_sp_port_vlan_fid_leave (struct mlxsw_sp_port_vlan*) ;

__attribute__((used)) static int
mlxsw_sp_port_vlan_bridge_join(struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan,
          struct mlxsw_sp_bridge_port *bridge_port,
          struct netlink_ext_ack *extack)
{
 struct mlxsw_sp_port *mlxsw_sp_port = mlxsw_sp_port_vlan->mlxsw_sp_port;
 struct mlxsw_sp_bridge_vlan *bridge_vlan;
 u16 vid = mlxsw_sp_port_vlan->vid;
 int err;


 if (mlxsw_sp_port_vlan->bridge_port)
  return 0;

 err = mlxsw_sp_port_vlan_fid_join(mlxsw_sp_port_vlan, bridge_port,
       extack);
 if (err)
  return err;

 err = mlxsw_sp_port_vid_learning_set(mlxsw_sp_port, vid,
          bridge_port->flags & BR_LEARNING);
 if (err)
  goto err_port_vid_learning_set;

 err = mlxsw_sp_port_vid_stp_set(mlxsw_sp_port, vid,
     bridge_port->stp_state);
 if (err)
  goto err_port_vid_stp_set;

 bridge_vlan = mlxsw_sp_bridge_vlan_get(bridge_port, vid);
 if (!bridge_vlan) {
  err = -ENOMEM;
  goto err_bridge_vlan_get;
 }

 list_add(&mlxsw_sp_port_vlan->bridge_vlan_node,
   &bridge_vlan->port_vlan_list);

 mlxsw_sp_bridge_port_get(mlxsw_sp_port->mlxsw_sp->bridge,
     bridge_port->dev);
 mlxsw_sp_port_vlan->bridge_port = bridge_port;

 return 0;

err_bridge_vlan_get:
 mlxsw_sp_port_vid_stp_set(mlxsw_sp_port, vid, BR_STATE_DISABLED);
err_port_vid_stp_set:
 mlxsw_sp_port_vid_learning_set(mlxsw_sp_port, vid, 0);
err_port_vid_learning_set:
 mlxsw_sp_port_vlan_fid_leave(mlxsw_sp_port_vlan);
 return err;
}
