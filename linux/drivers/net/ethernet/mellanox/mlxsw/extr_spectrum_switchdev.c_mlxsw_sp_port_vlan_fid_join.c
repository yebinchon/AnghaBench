
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_port_vlan {struct mlxsw_sp_fid* fid; int vid; struct mlxsw_sp_port* mlxsw_sp_port; } ;
struct mlxsw_sp_port {int local_port; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp_bridge_port {int flags; struct mlxsw_sp_bridge_device* bridge_device; } ;
struct mlxsw_sp_bridge_device {TYPE_1__* ops; } ;
struct TYPE_2__ {struct mlxsw_sp_fid* (* fid_get ) (struct mlxsw_sp_bridge_device*,int ,struct netlink_ext_ack*) ;} ;


 int BR_FLOOD ;
 scalar_t__ IS_ERR (struct mlxsw_sp_fid*) ;
 int MLXSW_SP_FLOOD_TYPE_BC ;
 int MLXSW_SP_FLOOD_TYPE_MC ;
 int MLXSW_SP_FLOOD_TYPE_UC ;
 int PTR_ERR (struct mlxsw_sp_fid*) ;
 int mlxsw_sp_fid_flood_set (struct mlxsw_sp_fid*,int ,int ,int) ;
 int mlxsw_sp_fid_port_vid_map (struct mlxsw_sp_fid*,struct mlxsw_sp_port*,int ) ;
 int mlxsw_sp_fid_put (struct mlxsw_sp_fid*) ;
 int mlxsw_sp_mc_flood (struct mlxsw_sp_bridge_port*) ;
 struct mlxsw_sp_fid* stub1 (struct mlxsw_sp_bridge_device*,int ,struct netlink_ext_ack*) ;

__attribute__((used)) static int
mlxsw_sp_port_vlan_fid_join(struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan,
       struct mlxsw_sp_bridge_port *bridge_port,
       struct netlink_ext_ack *extack)
{
 struct mlxsw_sp_port *mlxsw_sp_port = mlxsw_sp_port_vlan->mlxsw_sp_port;
 struct mlxsw_sp_bridge_device *bridge_device;
 u8 local_port = mlxsw_sp_port->local_port;
 u16 vid = mlxsw_sp_port_vlan->vid;
 struct mlxsw_sp_fid *fid;
 int err;

 bridge_device = bridge_port->bridge_device;
 fid = bridge_device->ops->fid_get(bridge_device, vid, extack);
 if (IS_ERR(fid))
  return PTR_ERR(fid);

 err = mlxsw_sp_fid_flood_set(fid, MLXSW_SP_FLOOD_TYPE_UC, local_port,
         bridge_port->flags & BR_FLOOD);
 if (err)
  goto err_fid_uc_flood_set;

 err = mlxsw_sp_fid_flood_set(fid, MLXSW_SP_FLOOD_TYPE_MC, local_port,
         mlxsw_sp_mc_flood(bridge_port));
 if (err)
  goto err_fid_mc_flood_set;

 err = mlxsw_sp_fid_flood_set(fid, MLXSW_SP_FLOOD_TYPE_BC, local_port,
         1);
 if (err)
  goto err_fid_bc_flood_set;

 err = mlxsw_sp_fid_port_vid_map(fid, mlxsw_sp_port, vid);
 if (err)
  goto err_fid_port_vid_map;

 mlxsw_sp_port_vlan->fid = fid;

 return 0;

err_fid_port_vid_map:
 mlxsw_sp_fid_flood_set(fid, MLXSW_SP_FLOOD_TYPE_BC, local_port, 0);
err_fid_bc_flood_set:
 mlxsw_sp_fid_flood_set(fid, MLXSW_SP_FLOOD_TYPE_MC, local_port, 0);
err_fid_mc_flood_set:
 mlxsw_sp_fid_flood_set(fid, MLXSW_SP_FLOOD_TYPE_UC, local_port, 0);
err_fid_uc_flood_set:
 mlxsw_sp_fid_put(fid);
 return err;
}
