
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct virt_wifi_netdev_priv {int being_deleted; int is_connected; int is_up; TYPE_1__* lowerdev; int connect; struct net_device* upperdev; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {scalar_t__ mtu; TYPE_5__* ieee80211_ptr; } ;
struct net {int dummy; } ;
struct TYPE_10__ {int wiphy; int iftype; } ;
struct TYPE_9__ {scalar_t__ mtu; int dev; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t IFLA_LINK ;
 size_t IFLA_MTU ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int NL80211_IFTYPE_STATION ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int THIS_MODULE ;
 TYPE_1__* __dev_get_by_index (struct net*,int ) ;
 int __module_get (int ) ;
 int common_wiphy ;
 int dev_err (int *,char*,int) ;
 int eth_hw_addr_inherit (struct net_device*,TYPE_1__*) ;
 int kfree (TYPE_5__*) ;
 TYPE_5__* kzalloc (int,int ) ;
 struct virt_wifi_netdev_priv* netdev_priv (struct net_device*) ;
 int netdev_rx_handler_register (TYPE_1__*,int ,struct virt_wifi_netdev_priv*) ;
 int netdev_rx_handler_unregister (TYPE_1__*) ;
 int netdev_upper_dev_link (TYPE_1__*,struct net_device*,struct netlink_ext_ack*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stacked_transfer_operstate (TYPE_1__*,struct net_device*) ;
 int nla_get_u32 (struct nlattr*) ;
 int register_netdevice (struct net_device*) ;
 int unregister_netdevice (struct net_device*) ;
 int virt_wifi_connect_complete ;
 int virt_wifi_rx_handler ;

__attribute__((used)) static int virt_wifi_newlink(struct net *src_net, struct net_device *dev,
        struct nlattr *tb[], struct nlattr *data[],
        struct netlink_ext_ack *extack)
{
 struct virt_wifi_netdev_priv *priv = netdev_priv(dev);
 int err;

 if (!tb[IFLA_LINK])
  return -EINVAL;

 netif_carrier_off(dev);

 priv->upperdev = dev;
 priv->lowerdev = __dev_get_by_index(src_net,
         nla_get_u32(tb[IFLA_LINK]));

 if (!priv->lowerdev)
  return -ENODEV;
 if (!tb[IFLA_MTU])
  dev->mtu = priv->lowerdev->mtu;
 else if (dev->mtu > priv->lowerdev->mtu)
  return -EINVAL;

 err = netdev_rx_handler_register(priv->lowerdev, virt_wifi_rx_handler,
      priv);
 if (err) {
  dev_err(&priv->lowerdev->dev,
   "can't netdev_rx_handler_register: %d\n", err);
  return err;
 }

 eth_hw_addr_inherit(dev, priv->lowerdev);
 netif_stacked_transfer_operstate(priv->lowerdev, dev);

 SET_NETDEV_DEV(dev, &priv->lowerdev->dev);
 dev->ieee80211_ptr = kzalloc(sizeof(*dev->ieee80211_ptr), GFP_KERNEL);

 if (!dev->ieee80211_ptr) {
  err = -ENOMEM;
  goto remove_handler;
 }

 dev->ieee80211_ptr->iftype = NL80211_IFTYPE_STATION;
 dev->ieee80211_ptr->wiphy = common_wiphy;

 err = register_netdevice(dev);
 if (err) {
  dev_err(&priv->lowerdev->dev, "can't register_netdevice: %d\n",
   err);
  goto free_wireless_dev;
 }

 err = netdev_upper_dev_link(priv->lowerdev, dev, extack);
 if (err) {
  dev_err(&priv->lowerdev->dev, "can't netdev_upper_dev_link: %d\n",
   err);
  goto unregister_netdev;
 }

 priv->being_deleted = 0;
 priv->is_connected = 0;
 priv->is_up = 0;
 INIT_DELAYED_WORK(&priv->connect, virt_wifi_connect_complete);
 __module_get(THIS_MODULE);

 return 0;
unregister_netdev:
 unregister_netdevice(dev);
free_wireless_dev:
 kfree(dev->ieee80211_ptr);
 dev->ieee80211_ptr = ((void*)0);
remove_handler:
 netdev_rx_handler_unregister(priv->lowerdev);

 return err;
}
