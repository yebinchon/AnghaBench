
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udp_tunnel_info {scalar_t__ type; int sa_family; int port; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ vxlan_udp_port_number; } ;
struct enic {int devcmd_lock; TYPE_1__ vxlan; int vdev; } ;


 int OVERLAY_FEATURE_VXLAN ;
 int OVERLAY_OFFLOAD_DISABLE ;
 scalar_t__ UDP_TUNNEL_TYPE_VXLAN ;
 int netdev_err (struct net_device*,char*,scalar_t__) ;
 int netdev_info (struct net_device*,char*,scalar_t__,int ,...) ;
 struct enic* netdev_priv (struct net_device*) ;
 scalar_t__ ntohs (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vnic_dev_overlay_offload_ctrl (int ,int ,int ) ;

__attribute__((used)) static void enic_udp_tunnel_del(struct net_device *netdev,
    struct udp_tunnel_info *ti)
{
 struct enic *enic = netdev_priv(netdev);
 int err;

 spin_lock_bh(&enic->devcmd_lock);

 if ((ntohs(ti->port) != enic->vxlan.vxlan_udp_port_number) ||
     ti->type != UDP_TUNNEL_TYPE_VXLAN) {
  netdev_info(netdev, "udp_tnl: port:%d, sa_family: %d, type: %d not offloaded",
       ntohs(ti->port), ti->sa_family, ti->type);
  goto unlock;
 }

 err = vnic_dev_overlay_offload_ctrl(enic->vdev, OVERLAY_FEATURE_VXLAN,
         OVERLAY_OFFLOAD_DISABLE);
 if (err) {
  netdev_err(netdev, "vxlan: del offload udp port: %d failed",
      ntohs(ti->port));
  goto unlock;
 }

 enic->vxlan.vxlan_udp_port_number = 0;

 netdev_info(netdev, "vxlan: del offload udp port %d, family %d\n",
      ntohs(ti->port), ti->sa_family);

unlock:
 spin_unlock_bh(&enic->devcmd_lock);
}
