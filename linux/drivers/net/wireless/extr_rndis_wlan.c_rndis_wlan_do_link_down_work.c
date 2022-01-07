
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; } ;
struct rndis_wlan_private {int connected; int bssid; } ;


 int GFP_KERNEL ;
 int cfg80211_disconnected (int ,int ,int *,int ,int,int ) ;
 int deauthenticate (struct usbnet*) ;
 int eth_zero_addr (int ) ;
 struct rndis_wlan_private* get_rndis_wlan_priv (struct usbnet*) ;
 int netif_carrier_off (int ) ;

__attribute__((used)) static void rndis_wlan_do_link_down_work(struct usbnet *usbdev)
{
 struct rndis_wlan_private *priv = get_rndis_wlan_priv(usbdev);

 if (priv->connected) {
  priv->connected = 0;
  eth_zero_addr(priv->bssid);

  deauthenticate(usbdev);

  cfg80211_disconnected(usbdev->net, 0, ((void*)0), 0, 1, GFP_KERNEL);
 }

 netif_carrier_off(usbdev->net);
}
