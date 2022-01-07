
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int flags; } ;
struct vxlan_dev {TYPE_1__ cfg; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp_bridge_device {TYPE_2__* ops; } ;
struct mlxsw_sp {int bridge; } ;
typedef int __be32 ;
struct TYPE_4__ {int (* fid_vid ) (struct mlxsw_sp_bridge_device*,struct mlxsw_sp_fid const*) ;} ;


 int BR_LEARNING ;
 int EINVAL ;
 int VXLAN_F_LEARN ;
 struct net_device* __dev_get_by_index (int *,int) ;
 int br_port_flag_is_set (struct net_device*,int ) ;
 int init_net ;
 struct mlxsw_sp_bridge_device* mlxsw_sp_bridge_device_find (int ,struct net_device*) ;
 int mlxsw_sp_fid_nve_ifindex (struct mlxsw_sp_fid const*,int*) ;
 int mlxsw_sp_fid_vni (struct mlxsw_sp_fid const*,int *) ;
 struct net_device* netdev_master_upper_dev_get (struct net_device*) ;
 struct vxlan_dev* netdev_priv (struct net_device*) ;
 scalar_t__ netif_is_vxlan (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int stub1 (struct mlxsw_sp_bridge_device*,struct mlxsw_sp_fid const*) ;

__attribute__((used)) static int
__mlxsw_sp_fdb_notify_mac_uc_tunnel_process(struct mlxsw_sp *mlxsw_sp,
         const struct mlxsw_sp_fid *fid,
         bool adding,
         struct net_device **nve_dev,
         u16 *p_vid, __be32 *p_vni)
{
 struct mlxsw_sp_bridge_device *bridge_device;
 struct net_device *br_dev, *dev;
 int nve_ifindex;
 int err;

 err = mlxsw_sp_fid_nve_ifindex(fid, &nve_ifindex);
 if (err)
  return err;

 err = mlxsw_sp_fid_vni(fid, p_vni);
 if (err)
  return err;

 dev = __dev_get_by_index(&init_net, nve_ifindex);
 if (!dev)
  return -EINVAL;
 *nve_dev = dev;

 if (!netif_running(dev))
  return -EINVAL;

 if (adding && !br_port_flag_is_set(dev, BR_LEARNING))
  return -EINVAL;

 if (adding && netif_is_vxlan(dev)) {
  struct vxlan_dev *vxlan = netdev_priv(dev);

  if (!(vxlan->cfg.flags & VXLAN_F_LEARN))
   return -EINVAL;
 }

 br_dev = netdev_master_upper_dev_get(dev);
 if (!br_dev)
  return -EINVAL;

 bridge_device = mlxsw_sp_bridge_device_find(mlxsw_sp->bridge, br_dev);
 if (!bridge_device)
  return -EINVAL;

 *p_vid = bridge_device->ops->fid_vid(bridge_device, fid);

 return 0;
}
