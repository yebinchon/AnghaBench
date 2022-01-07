
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int vni; } ;
struct vxlan_dev {TYPE_1__ cfg; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp_bridge_device {int dev; } ;
struct mlxsw_sp {int dummy; } ;
typedef int __be32 ;


 int EINVAL ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ mlxsw_sp_bridge_8021q_vxlan_dev_find (int ,scalar_t__) ;
 int mlxsw_sp_bridge_8021q_vxlan_join (struct mlxsw_sp_bridge_device*,struct net_device const*,scalar_t__,struct netlink_ext_ack*) ;
 int mlxsw_sp_bridge_vxlan_leave (struct mlxsw_sp*,struct net_device const*) ;
 scalar_t__ mlxsw_sp_fid_8021q_vid (struct mlxsw_sp_fid*) ;
 struct mlxsw_sp_fid* mlxsw_sp_fid_lookup_by_vni (struct mlxsw_sp*,int ) ;
 int mlxsw_sp_fid_put (struct mlxsw_sp_fid*) ;
 struct vxlan_dev* netdev_priv (struct net_device const*) ;
 int netif_running (struct net_device const*) ;

__attribute__((used)) static int
mlxsw_sp_switchdev_vxlan_vlan_add(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_bridge_device *bridge_device,
      const struct net_device *vxlan_dev, u16 vid,
      bool flag_untagged, bool flag_pvid,
      struct netlink_ext_ack *extack)
{
 struct vxlan_dev *vxlan = netdev_priv(vxlan_dev);
 __be32 vni = vxlan->cfg.vni;
 struct mlxsw_sp_fid *fid;
 u16 old_vid;
 int err;






 if (flag_untagged && flag_pvid &&
     mlxsw_sp_bridge_8021q_vxlan_dev_find(bridge_device->dev, vid)) {
  NL_SET_ERR_MSG_MOD(extack, "VLAN already mapped to a different VNI");
  return -EINVAL;
 }

 if (!netif_running(vxlan_dev))
  return 0;





 fid = mlxsw_sp_fid_lookup_by_vni(mlxsw_sp, vni);
 if (!fid) {
  if (!flag_untagged || !flag_pvid)
   return 0;
  return mlxsw_sp_bridge_8021q_vxlan_join(bridge_device,
       vxlan_dev, vid, extack);
 }






 old_vid = mlxsw_sp_fid_8021q_vid(fid);
 if (vid == old_vid) {
  if (WARN_ON(flag_untagged && flag_pvid)) {
   mlxsw_sp_fid_put(fid);
   return -EINVAL;
  }
  mlxsw_sp_bridge_vxlan_leave(mlxsw_sp, vxlan_dev);
  mlxsw_sp_fid_put(fid);
  return 0;
 }




 if (!flag_pvid) {
  mlxsw_sp_fid_put(fid);
  return 0;
 }




 mlxsw_sp_bridge_vxlan_leave(mlxsw_sp, vxlan_dev);
 mlxsw_sp_fid_put(fid);




 if (!flag_untagged)
  return 0;

 err = mlxsw_sp_bridge_8021q_vxlan_join(bridge_device, vxlan_dev, vid,
            extack);
 if (err)
  goto err_vxlan_join;

 return 0;

err_vxlan_join:
 mlxsw_sp_bridge_8021q_vxlan_join(bridge_device, vxlan_dev, old_vid,
      ((void*)0));
 return err;
}
