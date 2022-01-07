
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct net_device {int dev_addr; } ;
struct mlxsw_sp_rif {int fid; TYPE_1__* ops; int rif_index; } ;
struct mlxsw_sp {int dummy; } ;
struct macvlan_dev {int lowerdev; } ;
struct TYPE_2__ {int (* fdb_del ) (struct mlxsw_sp_rif*,int ) ;} ;


 int EOPNOTSUPP ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int mlxsw_sp_fid_index (int ) ;
 int mlxsw_sp_rif_fdb_op (struct mlxsw_sp*,int ,int ,int) ;
 struct mlxsw_sp_rif* mlxsw_sp_rif_find_by_dev (struct mlxsw_sp*,int ) ;
 int mlxsw_sp_rif_vrrp_op (struct mlxsw_sp*,int ,int ,int) ;
 struct macvlan_dev* netdev_priv (struct net_device const*) ;
 int stub1 (struct mlxsw_sp_rif*,int ) ;

__attribute__((used)) static int mlxsw_sp_rif_macvlan_add(struct mlxsw_sp *mlxsw_sp,
        const struct net_device *macvlan_dev,
        struct netlink_ext_ack *extack)
{
 struct macvlan_dev *vlan = netdev_priv(macvlan_dev);
 struct mlxsw_sp_rif *rif;
 int err;

 rif = mlxsw_sp_rif_find_by_dev(mlxsw_sp, vlan->lowerdev);
 if (!rif) {
  NL_SET_ERR_MSG_MOD(extack, "macvlan is only supported on top of router interfaces");
  return -EOPNOTSUPP;
 }

 err = mlxsw_sp_rif_fdb_op(mlxsw_sp, macvlan_dev->dev_addr,
      mlxsw_sp_fid_index(rif->fid), 1);
 if (err)
  return err;

 err = mlxsw_sp_rif_vrrp_op(mlxsw_sp, rif->rif_index,
       macvlan_dev->dev_addr, 1);
 if (err)
  goto err_rif_vrrp_add;




 if (rif->ops->fdb_del)
  rif->ops->fdb_del(rif, macvlan_dev->dev_addr);

 return 0;

err_rif_vrrp_add:
 mlxsw_sp_rif_fdb_op(mlxsw_sp, macvlan_dev->dev_addr,
       mlxsw_sp_fid_index(rif->fid), 0);
 return err;
}
