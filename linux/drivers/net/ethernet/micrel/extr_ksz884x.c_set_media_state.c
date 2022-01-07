
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dev_priv {int media_state; } ;


 int link ;
 struct dev_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_info (struct dev_priv*,int ,struct net_device*,char*,char*) ;

__attribute__((used)) static void set_media_state(struct net_device *dev, int media_state)
{
 struct dev_priv *priv = netdev_priv(dev);

 if (media_state == priv->media_state)
  netif_carrier_on(dev);
 else
  netif_carrier_off(dev);
 netif_info(priv, link, dev, "link %s\n",
     media_state == priv->media_state ? "on" : "off");
}
