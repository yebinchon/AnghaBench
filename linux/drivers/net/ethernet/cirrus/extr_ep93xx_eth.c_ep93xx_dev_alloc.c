
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; int * netdev_ops; int * ethtool_ops; int dev_addr; } ;
struct ep93xx_priv {int dummy; } ;
struct ep93xx_eth_data {int dev_addr; } ;


 int ETH_ALEN ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_SG ;
 struct net_device* alloc_etherdev (int) ;
 int ep93xx_ethtool_ops ;
 int ep93xx_netdev_ops ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static struct net_device *ep93xx_dev_alloc(struct ep93xx_eth_data *data)
{
 struct net_device *dev;

 dev = alloc_etherdev(sizeof(struct ep93xx_priv));
 if (dev == ((void*)0))
  return ((void*)0);

 memcpy(dev->dev_addr, data->dev_addr, ETH_ALEN);

 dev->ethtool_ops = &ep93xx_ethtool_ops;
 dev->netdev_ops = &ep93xx_netdev_ops;

 dev->features |= NETIF_F_SG | NETIF_F_HW_CSUM;

 return dev;
}
