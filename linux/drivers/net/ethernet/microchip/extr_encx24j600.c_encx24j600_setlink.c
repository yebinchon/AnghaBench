
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct encx24j600_priv {int autoneg; int full_duplex; int speed; int hw_enabled; } ;


 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ DUPLEX_FULL ;
 int EBUSY ;
 int EOPNOTSUPP ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 int link ;
 struct encx24j600_priv* netdev_priv (struct net_device*) ;
 int netif_warn (struct encx24j600_priv*,int ,struct net_device*,char*) ;

__attribute__((used)) static int encx24j600_setlink(struct net_device *dev, u8 autoneg, u16 speed,
         u8 duplex)
{
 struct encx24j600_priv *priv = netdev_priv(dev);
 int ret = 0;

 if (!priv->hw_enabled) {



  if (speed == SPEED_10 || speed == SPEED_100) {
   priv->autoneg = (autoneg == AUTONEG_ENABLE);
   priv->full_duplex = (duplex == DUPLEX_FULL);
   priv->speed = (speed == SPEED_100);
  } else {
   netif_warn(priv, link, dev, "unsupported link speed setting\n");


   ret = -EOPNOTSUPP;
  }
 } else {
  netif_warn(priv, link, dev, "Warning: hw must be disabled to set link mode\n");
  ret = -EBUSY;
 }
 return ret;
}
