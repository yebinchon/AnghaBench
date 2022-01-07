
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* rtnl_link_ops; } ;
struct TYPE_2__ {int kind; } ;


 scalar_t__ netif_is_geneve (struct net_device*) ;
 scalar_t__ netif_is_gretap (struct net_device*) ;
 scalar_t__ netif_is_vxlan (struct net_device*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static inline bool nfp_fl_is_netdev_to_offload(struct net_device *netdev)
{
 if (!netdev->rtnl_link_ops)
  return 0;
 if (!strcmp(netdev->rtnl_link_ops->kind, "openvswitch"))
  return 1;
 if (netif_is_vxlan(netdev))
  return 1;
 if (netif_is_geneve(netdev))
  return 1;
 if (netif_is_gretap(netdev))
  return 1;

 return 0;
}
