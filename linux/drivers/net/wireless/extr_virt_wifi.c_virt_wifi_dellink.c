
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virt_wifi_netdev_priv {int being_deleted; int lowerdev; } ;
struct net_device {TYPE_1__* ieee80211_ptr; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int wiphy; } ;


 int THIS_MODULE ;
 int module_put (int ) ;
 struct virt_wifi_netdev_priv* netdev_priv (struct net_device*) ;
 int netdev_rx_handler_unregister (int ) ;
 int netdev_upper_dev_unlink (int ,struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int unregister_netdevice_queue (struct net_device*,struct list_head*) ;
 int virt_wifi_cancel_connect (struct net_device*) ;
 int virt_wifi_cancel_scan (int ) ;

__attribute__((used)) static void virt_wifi_dellink(struct net_device *dev,
         struct list_head *head)
{
 struct virt_wifi_netdev_priv *priv = netdev_priv(dev);

 if (dev->ieee80211_ptr)
  virt_wifi_cancel_scan(dev->ieee80211_ptr->wiphy);

 priv->being_deleted = 1;
 virt_wifi_cancel_connect(dev);
 netif_carrier_off(dev);

 netdev_rx_handler_unregister(priv->lowerdev);
 netdev_upper_dev_unlink(priv->lowerdev, dev);

 unregister_netdevice_queue(dev, head);
 module_put(THIS_MODULE);


}
