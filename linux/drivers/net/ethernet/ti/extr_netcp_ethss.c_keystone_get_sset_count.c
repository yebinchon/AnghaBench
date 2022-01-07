
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netcp_intf {int dummy; } ;
struct net_device {int dummy; } ;
struct gbe_priv {int num_et_stats; } ;
struct gbe_intf {struct gbe_priv* gbe_dev; } ;


 int EINVAL ;


 struct gbe_intf* keystone_get_intf_data (struct netcp_intf*) ;
 struct netcp_intf* netdev_priv (struct net_device*) ;

__attribute__((used)) static int keystone_get_sset_count(struct net_device *ndev, int stringset)
{
 struct netcp_intf *netcp = netdev_priv(ndev);
 struct gbe_intf *gbe_intf;
 struct gbe_priv *gbe_dev;

 gbe_intf = keystone_get_intf_data(netcp);
 if (!gbe_intf)
  return -EINVAL;
 gbe_dev = gbe_intf->gbe_dev;

 switch (stringset) {
 case 128:
  return 0;
 case 129:
  return gbe_dev->num_et_stats;
 default:
  return -EINVAL;
 }
}
