
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wiphy {int dummy; } ;
struct virt_wifi_netdev_priv {int is_connected; scalar_t__ being_deleted; } ;
struct net_device {int dummy; } ;


 int EBUSY ;
 int GFP_KERNEL ;
 int cfg80211_disconnected (struct net_device*,int ,int *,int ,int,int ) ;
 struct virt_wifi_netdev_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int virt_wifi_cancel_connect (struct net_device*) ;
 int wiphy_debug (struct wiphy*,char*) ;

__attribute__((used)) static int virt_wifi_disconnect(struct wiphy *wiphy, struct net_device *netdev,
    u16 reason_code)
{
 struct virt_wifi_netdev_priv *priv = netdev_priv(netdev);

 if (priv->being_deleted)
  return -EBUSY;

 wiphy_debug(wiphy, "disconnect\n");
 virt_wifi_cancel_connect(netdev);

 cfg80211_disconnected(netdev, reason_code, ((void*)0), 0, 1, GFP_KERNEL);
 priv->is_connected = 0;
 netif_carrier_off(netdev);

 return 0;
}
