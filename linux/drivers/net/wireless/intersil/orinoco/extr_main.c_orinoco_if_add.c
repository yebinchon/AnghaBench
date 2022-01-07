
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int iftype; struct wiphy* wiphy; } ;
struct wiphy {int perm_addr; } ;
struct orinoco_private {int dev; struct net_device* ndev; int wireless_data; } ;
struct net_device_ops {int dummy; } ;
struct net_device {unsigned long base_addr; unsigned int irq; int name; int max_mtu; int min_mtu; int dev_addr; int needed_headroom; struct net_device_ops const* netdev_ops; int * wireless_data; int * wireless_handlers; int watchdog_timeo; struct wireless_dev* ieee80211_ptr; } ;


 int ENCAPS_OVERHEAD ;
 int ENOMEM ;
 int ETH_ALEN ;
 int HZ ;
 int NL80211_IFTYPE_STATION ;
 int ORINOCO_MAX_MTU ;
 int ORINOCO_MIN_MTU ;
 int SET_NETDEV_DEV (struct net_device*,int ) ;
 struct net_device* alloc_etherdev (int) ;
 int dev_dbg (int ,char*,int ) ;
 int free_netdev (struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 struct wireless_dev* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int orinoco_handler_def ;
 struct net_device_ops const orinoco_netdev_ops ;
 struct wiphy* priv_to_wiphy (struct orinoco_private*) ;
 int register_netdev (struct net_device*) ;

int orinoco_if_add(struct orinoco_private *priv,
     unsigned long base_addr,
     unsigned int irq,
     const struct net_device_ops *ops)
{
 struct wiphy *wiphy = priv_to_wiphy(priv);
 struct wireless_dev *wdev;
 struct net_device *dev;
 int ret;

 dev = alloc_etherdev(sizeof(struct wireless_dev));

 if (!dev)
  return -ENOMEM;


 wdev = netdev_priv(dev);
 wdev->wiphy = wiphy;
 wdev->iftype = NL80211_IFTYPE_STATION;


 dev->ieee80211_ptr = wdev;
 dev->watchdog_timeo = HZ;
 dev->wireless_handlers = &orinoco_handler_def;




 if (ops)
  dev->netdev_ops = ops;
 else
  dev->netdev_ops = &orinoco_netdev_ops;




 dev->needed_headroom = ENCAPS_OVERHEAD;

 netif_carrier_off(dev);

 memcpy(dev->dev_addr, wiphy->perm_addr, ETH_ALEN);

 dev->base_addr = base_addr;
 dev->irq = irq;

 dev->min_mtu = ORINOCO_MIN_MTU;
 dev->max_mtu = ORINOCO_MAX_MTU;

 SET_NETDEV_DEV(dev, priv->dev);
 ret = register_netdev(dev);
 if (ret)
  goto fail;

 priv->ndev = dev;


 dev_dbg(priv->dev, "Registered interface %s.\n", dev->name);

 return 0;

 fail:
 free_netdev(dev);
 return ret;
}
