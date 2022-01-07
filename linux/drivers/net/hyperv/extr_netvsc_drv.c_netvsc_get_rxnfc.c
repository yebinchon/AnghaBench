
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netvsc_device {int num_chn; } ;
struct net_device_context {int nvdev; } ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; int data; } ;


 int ENODEV ;
 int EOPNOTSUPP ;


 struct net_device_context* netdev_priv (struct net_device*) ;
 int netvsc_get_rss_hash_opts (struct net_device_context*,struct ethtool_rxnfc*) ;
 struct netvsc_device* rtnl_dereference (int ) ;

__attribute__((used)) static int
netvsc_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *info,
   u32 *rules)
{
 struct net_device_context *ndc = netdev_priv(dev);
 struct netvsc_device *nvdev = rtnl_dereference(ndc->nvdev);

 if (!nvdev)
  return -ENODEV;

 switch (info->cmd) {
 case 128:
  info->data = nvdev->num_chn;
  return 0;

 case 129:
  return netvsc_get_rss_hash_opts(ndc, info);
 }
 return -EOPNOTSUPP;
}
