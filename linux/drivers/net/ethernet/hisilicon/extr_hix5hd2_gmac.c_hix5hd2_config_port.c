
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct hix5hd2_priv {int phy_mode; scalar_t__ base; scalar_t__ ctrl_base; scalar_t__ duplex; scalar_t__ speed; } ;


 scalar_t__ BIT_MODE_CHANGE_EN ;
 scalar_t__ GMAC_FULL_DUPLEX ;
 scalar_t__ GMAC_SPEED_10 ;
 scalar_t__ GMAC_SPEED_100 ;
 scalar_t__ GMAC_SPEED_1000 ;
 scalar_t__ MAC_DUPLEX_HALF_CTRL ;
 scalar_t__ MII_SPEED_10 ;
 scalar_t__ MII_SPEED_100 ;
 scalar_t__ MODE_CHANGE_EN ;


 scalar_t__ PORT_MODE ;
 scalar_t__ RGMII_SPEED_10 ;
 scalar_t__ RGMII_SPEED_100 ;
 scalar_t__ RGMII_SPEED_1000 ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 int hix5hd2_mac_interface_reset (struct hix5hd2_priv*) ;
 struct hix5hd2_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static void hix5hd2_config_port(struct net_device *dev, u32 speed, u32 duplex)
{
 struct hix5hd2_priv *priv = netdev_priv(dev);
 u32 val;

 priv->speed = speed;
 priv->duplex = duplex;

 switch (priv->phy_mode) {
 case 128:
  if (speed == SPEED_1000)
   val = RGMII_SPEED_1000;
  else if (speed == SPEED_100)
   val = RGMII_SPEED_100;
  else
   val = RGMII_SPEED_10;
  break;
 case 129:
  if (speed == SPEED_100)
   val = MII_SPEED_100;
  else
   val = MII_SPEED_10;
  break;
 default:
  netdev_warn(dev, "not supported mode\n");
  val = MII_SPEED_10;
  break;
 }

 if (duplex)
  val |= GMAC_FULL_DUPLEX;
 writel_relaxed(val, priv->ctrl_base);
 hix5hd2_mac_interface_reset(priv);

 writel_relaxed(BIT_MODE_CHANGE_EN, priv->base + MODE_CHANGE_EN);
 if (speed == SPEED_1000)
  val = GMAC_SPEED_1000;
 else if (speed == SPEED_100)
  val = GMAC_SPEED_100;
 else
  val = GMAC_SPEED_10;
 writel_relaxed(val, priv->base + PORT_MODE);
 writel_relaxed(0, priv->base + MODE_CHANGE_EN);
 writel_relaxed(duplex, priv->base + MAC_DUPLEX_HALF_CTRL);
}
