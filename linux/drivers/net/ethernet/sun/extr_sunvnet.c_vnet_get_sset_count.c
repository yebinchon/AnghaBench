
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnet {int nports; } ;
struct net_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EOPNOTSUPP ;

 int NUM_VNET_PORT_STATS ;
 int ethtool_stats_keys ;
 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static int vnet_get_sset_count(struct net_device *dev, int sset)
{
 struct vnet *vp = (struct vnet *)netdev_priv(dev);

 switch (sset) {
 case 128:
  return ARRAY_SIZE(ethtool_stats_keys)
   + (NUM_VNET_PORT_STATS * vp->nports);
 default:
  return -EOPNOTSUPP;
 }
}
