
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ duplex; scalar_t__ speed; int autoneg; } ;
struct amd8111e_priv {TYPE_1__ link_config; scalar_t__ mmio; } ;


 int AUTONEG_COMPLETE ;
 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int AUTONEG_INVALID ;
 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 scalar_t__ DUPLEX_INVALID ;
 int FULL_DPLX ;
 int LINK_STATS ;
 int PHY_SPEED_10 ;
 int PHY_SPEED_100 ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_INVALID ;
 int SPEED_MASK ;
 scalar_t__ STAT0 ;
 int netdev_info (struct net_device*,char*,...) ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int amd8111e_link_change(struct net_device *dev)
{
 struct amd8111e_priv *lp = netdev_priv(dev);
 int status0,speed;


      status0 = readl(lp->mmio + STAT0);

 if(status0 & LINK_STATS){
  if(status0 & AUTONEG_COMPLETE)
   lp->link_config.autoneg = AUTONEG_ENABLE;
  else
   lp->link_config.autoneg = AUTONEG_DISABLE;

  if(status0 & FULL_DPLX)
   lp->link_config.duplex = DUPLEX_FULL;
  else
   lp->link_config.duplex = DUPLEX_HALF;
  speed = (status0 & SPEED_MASK) >> 7;
  if(speed == PHY_SPEED_10)
   lp->link_config.speed = SPEED_10;
  else if(speed == PHY_SPEED_100)
   lp->link_config.speed = SPEED_100;

  netdev_info(dev, "Link is Up. Speed is %s Mbps %s Duplex\n",
       (lp->link_config.speed == SPEED_100) ?
       "100" : "10",
       (lp->link_config.duplex == DUPLEX_FULL) ?
       "Full" : "Half");

  netif_carrier_on(dev);
 }
 else{
  lp->link_config.speed = SPEED_INVALID;
  lp->link_config.duplex = DUPLEX_INVALID;
  lp->link_config.autoneg = AUTONEG_INVALID;
  netdev_info(dev, "Link is Down.\n");
  netif_carrier_off(dev);
 }

 return 0;
}
