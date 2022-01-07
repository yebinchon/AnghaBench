
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct net_device {int dummy; } ;
struct hip04_priv {int phy_mode; scalar_t__ base; void* duplex; void* speed; } ;


 void* GE_DUPLEX_FULL ;
 void* GE_DUPLEX_HALF ;
 scalar_t__ GE_DUPLEX_TYPE ;
 void* GE_MODE_CHANGE_EN ;
 scalar_t__ GE_MODE_CHANGE_REG ;
 scalar_t__ GE_PORT_MODE ;
 void* MII_SPEED_10 ;
 void* MII_SPEED_100 ;


 void* SGMII_SPEED_10 ;
 void* SGMII_SPEED_100 ;
 void* SGMII_SPEED_1000 ;
 void* SPEED_100 ;
 void* SPEED_1000 ;
 struct hip04_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int writel_relaxed (void*,scalar_t__) ;

__attribute__((used)) static void hip04_config_port(struct net_device *ndev, u32 speed, u32 duplex)
{
 struct hip04_priv *priv = netdev_priv(ndev);
 u32 val;

 priv->speed = speed;
 priv->duplex = duplex;

 switch (priv->phy_mode) {
 case 128:
  if (speed == SPEED_1000)
   val = SGMII_SPEED_1000;
  else if (speed == SPEED_100)
   val = SGMII_SPEED_100;
  else
   val = SGMII_SPEED_10;
  break;
 case 129:
  if (speed == SPEED_100)
   val = MII_SPEED_100;
  else
   val = MII_SPEED_10;
  break;
 default:
  netdev_warn(ndev, "not supported mode\n");
  val = MII_SPEED_10;
  break;
 }
 writel_relaxed(val, priv->base + GE_PORT_MODE);

 val = duplex ? GE_DUPLEX_FULL : GE_DUPLEX_HALF;
 writel_relaxed(val, priv->base + GE_DUPLEX_TYPE);

 val = GE_MODE_CHANGE_EN;
 writel_relaxed(val, priv->base + GE_MODE_CHANGE_REG);
}
