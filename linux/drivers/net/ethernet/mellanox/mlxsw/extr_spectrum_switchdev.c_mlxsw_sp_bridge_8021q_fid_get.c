
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp_bridge_device {int dev; } ;
struct mlxsw_sp {int dummy; } ;


 struct mlxsw_sp_fid* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct mlxsw_sp_fid*) ;
 struct net_device* mlxsw_sp_bridge_8021q_vxlan_dev_find (int ,int ) ;
 int mlxsw_sp_bridge_8021q_vxlan_join (struct mlxsw_sp_bridge_device*,struct net_device*,int ,struct netlink_ext_ack*) ;
 struct mlxsw_sp_fid* mlxsw_sp_fid_8021q_get (struct mlxsw_sp*,int ) ;
 int mlxsw_sp_fid_put (struct mlxsw_sp_fid*) ;
 scalar_t__ mlxsw_sp_fid_vni_is_set (struct mlxsw_sp_fid*) ;
 struct mlxsw_sp* mlxsw_sp_lower_get (int ) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static struct mlxsw_sp_fid *
mlxsw_sp_bridge_8021q_fid_get(struct mlxsw_sp_bridge_device *bridge_device,
         u16 vid, struct netlink_ext_ack *extack)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_lower_get(bridge_device->dev);
 struct net_device *vxlan_dev;
 struct mlxsw_sp_fid *fid;
 int err;

 fid = mlxsw_sp_fid_8021q_get(mlxsw_sp, vid);
 if (IS_ERR(fid))
  return fid;

 if (mlxsw_sp_fid_vni_is_set(fid))
  return fid;




 vxlan_dev = mlxsw_sp_bridge_8021q_vxlan_dev_find(bridge_device->dev,
        vid);
 if (!vxlan_dev)
  return fid;

 if (!netif_running(vxlan_dev))
  return fid;

 err = mlxsw_sp_bridge_8021q_vxlan_join(bridge_device, vxlan_dev, vid,
            extack);
 if (err)
  goto err_vxlan_join;

 return fid;

err_vxlan_join:
 mlxsw_sp_fid_put(fid);
 return ERR_PTR(err);
}
