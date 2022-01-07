
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udp_tunnel_info {int type; int sa_family; int port; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int flags; int vxlan_udp_port_number; scalar_t__ patch_level; } ;
struct enic {int devcmd_lock; TYPE_1__ vxlan; int vdev; } ;
typedef int __be16 ;




 int ENIC_VXLAN_MULTI_WQ ;
 int ENIC_VXLAN_OUTER_IPV6 ;
 int OVERLAY_CFG_VXLAN_PORT_UPDATE ;
 int OVERLAY_FEATURE_VXLAN ;
 int RES_TYPE_WQ ;
 int UDP_TUNNEL_TYPE_VXLAN ;
 int netdev_info (struct net_device*,char*,...) ;
 struct enic* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int ntohs (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vnic_dev_get_res_count (int ,int ) ;
 int vnic_dev_overlay_offload_cfg (int ,int ,int) ;
 int vnic_dev_overlay_offload_ctrl (int ,int ,scalar_t__) ;

__attribute__((used)) static void enic_udp_tunnel_add(struct net_device *netdev,
    struct udp_tunnel_info *ti)
{
 struct enic *enic = netdev_priv(netdev);
 __be16 port = ti->port;
 int err;

 spin_lock_bh(&enic->devcmd_lock);

 if (ti->type != UDP_TUNNEL_TYPE_VXLAN) {
  netdev_info(netdev, "udp_tnl: only vxlan tunnel offload supported");
  goto error;
 }

 switch (ti->sa_family) {
 case 128:
  if (!(enic->vxlan.flags & ENIC_VXLAN_OUTER_IPV6)) {
   netdev_info(netdev, "vxlan: only IPv4 offload supported");
   goto error;
  }

 case 129:
  break;
 default:
  goto error;
 }

 if (enic->vxlan.vxlan_udp_port_number) {
  if (ntohs(port) == enic->vxlan.vxlan_udp_port_number)
   netdev_warn(netdev, "vxlan: udp port already offloaded");
  else
   netdev_info(netdev, "vxlan: offload supported for only one UDP port");

  goto error;
 }
 if ((vnic_dev_get_res_count(enic->vdev, RES_TYPE_WQ) != 1) &&
     !(enic->vxlan.flags & ENIC_VXLAN_MULTI_WQ)) {
  netdev_info(netdev, "vxlan: vxlan offload with multi wq not supported on this adapter");
  goto error;
 }

 err = vnic_dev_overlay_offload_cfg(enic->vdev,
        OVERLAY_CFG_VXLAN_PORT_UPDATE,
        ntohs(port));
 if (err)
  goto error;

 err = vnic_dev_overlay_offload_ctrl(enic->vdev, OVERLAY_FEATURE_VXLAN,
         enic->vxlan.patch_level);
 if (err)
  goto error;

 enic->vxlan.vxlan_udp_port_number = ntohs(port);

 netdev_info(netdev, "vxlan fw-vers-%d: offload enabled for udp port: %d, sa_family: %d ",
      (int)enic->vxlan.patch_level, ntohs(port), ti->sa_family);

 goto unlock;

error:
 netdev_info(netdev, "failed to offload udp port: %d, sa_family: %d, type: %d",
      ntohs(port), ti->sa_family, ti->type);
unlock:
 spin_unlock_bh(&enic->devcmd_lock);
}
