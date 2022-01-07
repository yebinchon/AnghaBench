
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_rif_params {struct net_device* dev; } ;
struct mlxsw_sp_rif {TYPE_1__* ops; } ;
struct mlxsw_sp_port_vlan {struct mlxsw_sp_fid* fid; int vid; struct mlxsw_sp_port* mlxsw_sp_port; } ;
struct mlxsw_sp_port {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {struct mlxsw_sp_fid* (* fid_get ) (struct mlxsw_sp_rif*,struct netlink_ext_ack*) ;} ;


 int BR_STATE_FORWARDING ;
 scalar_t__ IS_ERR (struct mlxsw_sp_rif*) ;
 int PTR_ERR (struct mlxsw_sp_rif*) ;
 int mlxsw_sp_fid_port_vid_map (struct mlxsw_sp_fid*,struct mlxsw_sp_port*,int ) ;
 int mlxsw_sp_fid_port_vid_unmap (struct mlxsw_sp_fid*,struct mlxsw_sp_port*,int ) ;
 int mlxsw_sp_fid_put (struct mlxsw_sp_fid*) ;
 int mlxsw_sp_port_vid_learning_set (struct mlxsw_sp_port*,int ,int) ;
 int mlxsw_sp_port_vid_stp_set (struct mlxsw_sp_port*,int ,int ) ;
 struct mlxsw_sp_rif* mlxsw_sp_rif_subport_get (struct mlxsw_sp*,struct mlxsw_sp_rif_params*,struct netlink_ext_ack*) ;
 int mlxsw_sp_rif_subport_params_init (struct mlxsw_sp_rif_params*,struct mlxsw_sp_port_vlan*) ;
 int mlxsw_sp_rif_subport_put (struct mlxsw_sp_rif*) ;
 struct mlxsw_sp_fid* stub1 (struct mlxsw_sp_rif*,struct netlink_ext_ack*) ;

__attribute__((used)) static int
mlxsw_sp_port_vlan_router_join(struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan,
          struct net_device *l3_dev,
          struct netlink_ext_ack *extack)
{
 struct mlxsw_sp_port *mlxsw_sp_port = mlxsw_sp_port_vlan->mlxsw_sp_port;
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 struct mlxsw_sp_rif_params params = {
  .dev = l3_dev,
 };
 u16 vid = mlxsw_sp_port_vlan->vid;
 struct mlxsw_sp_rif *rif;
 struct mlxsw_sp_fid *fid;
 int err;

 mlxsw_sp_rif_subport_params_init(&params, mlxsw_sp_port_vlan);
 rif = mlxsw_sp_rif_subport_get(mlxsw_sp, &params, extack);
 if (IS_ERR(rif))
  return PTR_ERR(rif);


 fid = rif->ops->fid_get(rif, extack);
 err = mlxsw_sp_fid_port_vid_map(fid, mlxsw_sp_port, vid);
 if (err)
  goto err_fid_port_vid_map;

 err = mlxsw_sp_port_vid_learning_set(mlxsw_sp_port, vid, 0);
 if (err)
  goto err_port_vid_learning_set;

 err = mlxsw_sp_port_vid_stp_set(mlxsw_sp_port, vid,
     BR_STATE_FORWARDING);
 if (err)
  goto err_port_vid_stp_set;

 mlxsw_sp_port_vlan->fid = fid;

 return 0;

err_port_vid_stp_set:
 mlxsw_sp_port_vid_learning_set(mlxsw_sp_port, vid, 1);
err_port_vid_learning_set:
 mlxsw_sp_fid_port_vid_unmap(fid, mlxsw_sp_port, vid);
err_fid_port_vid_map:
 mlxsw_sp_fid_put(fid);
 mlxsw_sp_rif_subport_put(rif);
 return err;
}
