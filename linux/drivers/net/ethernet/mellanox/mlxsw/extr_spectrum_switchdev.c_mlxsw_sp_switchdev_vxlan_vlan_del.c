
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int vni; } ;
struct vxlan_dev {TYPE_1__ cfg; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp_bridge_device {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
typedef int __be32 ;


 int mlxsw_sp_bridge_vxlan_leave (struct mlxsw_sp*,struct net_device const*) ;
 scalar_t__ mlxsw_sp_fid_8021q_vid (struct mlxsw_sp_fid*) ;
 struct mlxsw_sp_fid* mlxsw_sp_fid_lookup_by_vni (struct mlxsw_sp*,int ) ;
 int mlxsw_sp_fid_put (struct mlxsw_sp_fid*) ;
 struct vxlan_dev* netdev_priv (struct net_device const*) ;
 int netif_running (struct net_device const*) ;

__attribute__((used)) static void
mlxsw_sp_switchdev_vxlan_vlan_del(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_bridge_device *bridge_device,
      const struct net_device *vxlan_dev, u16 vid)
{
 struct vxlan_dev *vxlan = netdev_priv(vxlan_dev);
 __be32 vni = vxlan->cfg.vni;
 struct mlxsw_sp_fid *fid;

 if (!netif_running(vxlan_dev))
  return;

 fid = mlxsw_sp_fid_lookup_by_vni(mlxsw_sp, vni);
 if (!fid)
  return;


 if (mlxsw_sp_fid_8021q_vid(fid) != vid)
  goto out;

 mlxsw_sp_bridge_vxlan_leave(mlxsw_sp, vxlan_dev);

out:
 mlxsw_sp_fid_put(fid);
}
