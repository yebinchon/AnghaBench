
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct netdev_private {int an_enable; int speed; int full_duplex; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int speed; scalar_t__ autoneg; int duplex; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int EINVAL ;



 int mii_set_media (struct net_device*) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int printk (char*) ;

__attribute__((used)) static int rio_set_link_ksettings(struct net_device *dev,
      const struct ethtool_link_ksettings *cmd)
{
 struct netdev_private *np = netdev_priv(dev);
 u32 speed = cmd->base.speed;
 u8 duplex = cmd->base.duplex;

 netif_carrier_off(dev);
 if (cmd->base.autoneg == AUTONEG_ENABLE) {
  if (np->an_enable) {
   return 0;
  } else {
   np->an_enable = 1;
   mii_set_media(dev);
   return 0;
  }
 } else {
  np->an_enable = 0;
  if (np->speed == 1000) {
   speed = 129;
   duplex = DUPLEX_FULL;
   printk("Warning!! Can't disable Auto negotiation in 1000Mbps, change to Manual 100Mbps, Full duplex.\n");
  }
  switch (speed) {
  case 130:
   np->speed = 10;
   np->full_duplex = (duplex == DUPLEX_FULL);
   break;
  case 129:
   np->speed = 100;
   np->full_duplex = (duplex == DUPLEX_FULL);
   break;
  case 128:
  default:
   return -EINVAL;
  }
  mii_set_media(dev);
 }
 return 0;
}
