
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int vni; } ;
struct vxlan_dev {TYPE_1__ cfg; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_nve_params {struct net_device const* dev; int vni; int type; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp_bridge_device {int dev; } ;
struct mlxsw_sp {int dummy; } ;


 int EINVAL ;
 int MLXSW_SP_NVE_TYPE_VXLAN ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 struct mlxsw_sp_fid* mlxsw_sp_fid_8021q_lookup (struct mlxsw_sp*,int ) ;
 int mlxsw_sp_fid_put (struct mlxsw_sp_fid*) ;
 scalar_t__ mlxsw_sp_fid_vni_is_set (struct mlxsw_sp_fid*) ;
 struct mlxsw_sp* mlxsw_sp_lower_get (int ) ;
 int mlxsw_sp_nve_fid_enable (struct mlxsw_sp*,struct mlxsw_sp_fid*,struct mlxsw_sp_nve_params*,struct netlink_ext_ack*) ;
 int mlxsw_sp_vxlan_mapped_vid (struct net_device const*,int *) ;
 struct vxlan_dev* netdev_priv (struct net_device const*) ;

__attribute__((used)) static int
mlxsw_sp_bridge_8021q_vxlan_join(struct mlxsw_sp_bridge_device *bridge_device,
     const struct net_device *vxlan_dev, u16 vid,
     struct netlink_ext_ack *extack)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_lower_get(bridge_device->dev);
 struct vxlan_dev *vxlan = netdev_priv(vxlan_dev);
 struct mlxsw_sp_nve_params params = {
  .type = MLXSW_SP_NVE_TYPE_VXLAN,
  .vni = vxlan->cfg.vni,
  .dev = vxlan_dev,
 };
 struct mlxsw_sp_fid *fid;
 int err;





 if (!vid) {
  err = mlxsw_sp_vxlan_mapped_vid(vxlan_dev, &vid);
  if (err || !vid)
   return err;
 }




 fid = mlxsw_sp_fid_8021q_lookup(mlxsw_sp, vid);
 if (!fid)
  return 0;

 if (mlxsw_sp_fid_vni_is_set(fid)) {
  NL_SET_ERR_MSG_MOD(extack, "VNI is already set on FID");
  err = -EINVAL;
  goto err_vni_exists;
 }

 err = mlxsw_sp_nve_fid_enable(mlxsw_sp, fid, &params, extack);
 if (err)
  goto err_nve_fid_enable;




 mlxsw_sp_fid_put(fid);

 return 0;

err_nve_fid_enable:
err_vni_exists:
 mlxsw_sp_fid_put(fid);
 return err;
}
