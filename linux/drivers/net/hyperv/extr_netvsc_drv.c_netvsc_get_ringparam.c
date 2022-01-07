
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netvsc_device {int dummy; } ;
struct net_device_context {int nvdev; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int dummy; } ;


 int __netvsc_get_ringparam (struct netvsc_device*,struct ethtool_ringparam*) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 struct netvsc_device* rtnl_dereference (int ) ;

__attribute__((used)) static void netvsc_get_ringparam(struct net_device *ndev,
     struct ethtool_ringparam *ring)
{
 struct net_device_context *ndevctx = netdev_priv(ndev);
 struct netvsc_device *nvdev = rtnl_dereference(ndevctx->nvdev);

 if (!nvdev)
  return;

 __netvsc_get_ringparam(nvdev, ring);
}
