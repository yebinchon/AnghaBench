
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virt_wifi_netdev_priv {int is_up; } ;
struct net_device {TYPE_1__* ieee80211_ptr; } ;
struct TYPE_2__ {int wiphy; } ;


 struct virt_wifi_netdev_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int virt_wifi_cancel_connect (struct net_device*) ;
 int virt_wifi_cancel_scan (int ) ;

__attribute__((used)) static int virt_wifi_net_device_stop(struct net_device *dev)
{
 struct virt_wifi_netdev_priv *n_priv = netdev_priv(dev);

 n_priv->is_up = 0;

 if (!dev->ieee80211_ptr)
  return 0;

 virt_wifi_cancel_scan(dev->ieee80211_ptr->wiphy);
 virt_wifi_cancel_connect(dev);
 netif_carrier_off(dev);

 return 0;
}
