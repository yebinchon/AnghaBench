
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_failover_info {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;
struct net_device {int priv_flags; int features; int hw_features; int max_mtu; int min_mtu; int addr_len; int dev_addr; int * ethtool_ops; int * netdev_ops; TYPE_1__ dev; } ;
struct failover {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct failover* ERR_PTR (int) ;
 int FAILOVER_VLAN_FEATURES ;
 int IFF_NO_QUEUE ;
 int IFF_TX_SKB_SHARING ;
 int IFF_UNICAST_FLT ;
 int IFF_XMIT_DST_RELEASE ;
 scalar_t__ IS_ERR (struct failover*) ;
 int NETIF_F_GSO_ENCAP_ALL ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_LLTX ;
 int NETIF_F_NETNS_LOCAL ;
 int PTR_ERR (struct failover*) ;
 int SET_NETDEV_DEV (struct net_device*,struct device*) ;
 struct net_device* alloc_etherdev_mq (int,int) ;
 int dev_err (struct device*,char*) ;
 int dev_net (struct net_device*) ;
 int dev_net_set (struct net_device*,int ) ;
 int failover_dev_ops ;
 int failover_ethtool_ops ;
 struct failover* failover_register (struct net_device*,int *) ;
 int free_netdev (struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 int net_failover_ops ;
 int netif_carrier_off (struct net_device*) ;
 int register_netdev (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

struct failover *net_failover_create(struct net_device *standby_dev)
{
 struct device *dev = standby_dev->dev.parent;
 struct net_device *failover_dev;
 struct failover *failover;
 int err;




 failover_dev = alloc_etherdev_mq(sizeof(struct net_failover_info), 16);
 if (!failover_dev) {
  dev_err(dev, "Unable to allocate failover_netdev!\n");
  return ERR_PTR(-ENOMEM);
 }

 dev_net_set(failover_dev, dev_net(standby_dev));
 SET_NETDEV_DEV(failover_dev, dev);

 failover_dev->netdev_ops = &failover_dev_ops;
 failover_dev->ethtool_ops = &failover_ethtool_ops;


 failover_dev->priv_flags |= IFF_UNICAST_FLT | IFF_NO_QUEUE;
 failover_dev->priv_flags &= ~(IFF_XMIT_DST_RELEASE |
           IFF_TX_SKB_SHARING);


 failover_dev->features |= NETIF_F_LLTX;


 failover_dev->features |= NETIF_F_NETNS_LOCAL;

 failover_dev->hw_features = FAILOVER_VLAN_FEATURES |
        NETIF_F_HW_VLAN_CTAG_TX |
        NETIF_F_HW_VLAN_CTAG_RX |
        NETIF_F_HW_VLAN_CTAG_FILTER;

 failover_dev->hw_features |= NETIF_F_GSO_ENCAP_ALL;
 failover_dev->features |= failover_dev->hw_features;

 memcpy(failover_dev->dev_addr, standby_dev->dev_addr,
        failover_dev->addr_len);

 failover_dev->min_mtu = standby_dev->min_mtu;
 failover_dev->max_mtu = standby_dev->max_mtu;

 err = register_netdev(failover_dev);
 if (err) {
  dev_err(dev, "Unable to register failover_dev!\n");
  goto err_register_netdev;
 }

 netif_carrier_off(failover_dev);

 failover = failover_register(failover_dev, &net_failover_ops);
 if (IS_ERR(failover)) {
  err = PTR_ERR(failover);
  goto err_failover_register;
 }

 return failover;

err_failover_register:
 unregister_netdev(failover_dev);
err_register_netdev:
 free_netdev(failover_dev);

 return ERR_PTR(err);
}
