
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;
struct mlxsw_sp_rif {int fid; int rif_index; } ;
struct mlxsw_sp {int dummy; } ;
struct macvlan_dev {int lowerdev; } ;


 int mlxsw_sp_fid_index (int ) ;
 int mlxsw_sp_rif_fdb_op (struct mlxsw_sp*,int ,int ,int) ;
 struct mlxsw_sp_rif* mlxsw_sp_rif_find_by_dev (struct mlxsw_sp*,int ) ;
 int mlxsw_sp_rif_vrrp_op (struct mlxsw_sp*,int ,int ,int) ;
 struct macvlan_dev* netdev_priv (struct net_device const*) ;

void mlxsw_sp_rif_macvlan_del(struct mlxsw_sp *mlxsw_sp,
         const struct net_device *macvlan_dev)
{
 struct macvlan_dev *vlan = netdev_priv(macvlan_dev);
 struct mlxsw_sp_rif *rif;

 rif = mlxsw_sp_rif_find_by_dev(mlxsw_sp, vlan->lowerdev);



 if (!rif)
  return;
 mlxsw_sp_rif_vrrp_op(mlxsw_sp, rif->rif_index, macvlan_dev->dev_addr,
        0);
 mlxsw_sp_rif_fdb_op(mlxsw_sp, macvlan_dev->dev_addr,
       mlxsw_sp_fid_index(rif->fid), 0);
}
