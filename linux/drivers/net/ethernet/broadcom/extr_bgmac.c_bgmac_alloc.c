
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * ethtool_ops; int * netdev_ops; } ;
struct device {int dummy; } ;
struct bgmac {struct net_device* net_dev; struct device* dev; } ;


 int bgmac_ethtool_ops ;
 int bgmac_netdev_ops ;
 struct net_device* devm_alloc_etherdev (struct device*,int) ;
 struct bgmac* netdev_priv (struct net_device*) ;

struct bgmac *bgmac_alloc(struct device *dev)
{
 struct net_device *net_dev;
 struct bgmac *bgmac;


 net_dev = devm_alloc_etherdev(dev, sizeof(*bgmac));
 if (!net_dev)
  return ((void*)0);

 net_dev->netdev_ops = &bgmac_netdev_ops;
 net_dev->ethtool_ops = &bgmac_ethtool_ops;

 bgmac = netdev_priv(net_dev);
 bgmac->dev = dev;
 bgmac->net_dev = net_dev;

 return bgmac;
}
