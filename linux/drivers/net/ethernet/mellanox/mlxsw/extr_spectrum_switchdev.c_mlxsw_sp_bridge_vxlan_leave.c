
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vni; } ;
struct vxlan_dev {TYPE_1__ cfg; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 struct mlxsw_sp_fid* mlxsw_sp_fid_lookup_by_vni (struct mlxsw_sp*,int ) ;
 int mlxsw_sp_fid_put (struct mlxsw_sp_fid*) ;
 int mlxsw_sp_nve_fid_disable (struct mlxsw_sp*,struct mlxsw_sp_fid*) ;
 struct vxlan_dev* netdev_priv (struct net_device const*) ;

void mlxsw_sp_bridge_vxlan_leave(struct mlxsw_sp *mlxsw_sp,
     const struct net_device *vxlan_dev)
{
 struct vxlan_dev *vxlan = netdev_priv(vxlan_dev);
 struct mlxsw_sp_fid *fid;


 fid = mlxsw_sp_fid_lookup_by_vni(mlxsw_sp, vxlan->cfg.vni);
 if (!fid)
  return;

 mlxsw_sp_nve_fid_disable(mlxsw_sp, fid);
 mlxsw_sp_fid_put(fid);
}
