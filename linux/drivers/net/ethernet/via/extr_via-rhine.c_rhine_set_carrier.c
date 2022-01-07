
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhine_private {int dummy; } ;
struct net_device {int dummy; } ;
struct mii_if_info {int force_media; struct net_device* dev; } ;


 int link ;
 struct rhine_private* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_info (struct rhine_private*,int ,struct net_device*,char*,int ,int ) ;
 int rhine_check_media (struct net_device*,int ) ;

__attribute__((used)) static void rhine_set_carrier(struct mii_if_info *mii)
{
 struct net_device *dev = mii->dev;
 struct rhine_private *rp = netdev_priv(dev);

 if (mii->force_media) {

  if (!netif_carrier_ok(dev))
   netif_carrier_on(dev);
 }

 rhine_check_media(dev, 0);

 netif_info(rp, link, dev, "force_media %d, carrier %d\n",
     mii->force_media, netif_carrier_ok(dev));
}
