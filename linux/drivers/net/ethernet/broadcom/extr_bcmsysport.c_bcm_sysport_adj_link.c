
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {scalar_t__ link; scalar_t__ duplex; int speed; scalar_t__ pause; } ;
struct net_device {struct phy_device* phydev; } ;
struct bcm_sysport_priv {scalar_t__ old_link; scalar_t__ old_duplex; scalar_t__ old_pause; scalar_t__ is_lite; } ;


 int CMD_HD_EN ;
 int CMD_RX_PAUSE_IGNORE ;
 int CMD_SPEED_10 ;
 int CMD_SPEED_100 ;
 int CMD_SPEED_1000 ;
 int CMD_SPEED_2500 ;
 int CMD_SPEED_MASK ;
 int CMD_SPEED_SHIFT ;
 int CMD_TX_PAUSE_IGNORE ;
 scalar_t__ DUPLEX_HALF ;




 int UMAC_CMD ;
 struct bcm_sysport_priv* netdev_priv (struct net_device*) ;
 int phy_print_status (struct phy_device*) ;
 int umac_readl (struct bcm_sysport_priv*,int ) ;
 int umac_writel (struct bcm_sysport_priv*,int,int ) ;

__attribute__((used)) static void bcm_sysport_adj_link(struct net_device *dev)
{
 struct bcm_sysport_priv *priv = netdev_priv(dev);
 struct phy_device *phydev = dev->phydev;
 unsigned int changed = 0;
 u32 cmd_bits = 0, reg;

 if (priv->old_link != phydev->link) {
  changed = 1;
  priv->old_link = phydev->link;
 }

 if (priv->old_duplex != phydev->duplex) {
  changed = 1;
  priv->old_duplex = phydev->duplex;
 }

 if (priv->is_lite)
  goto out;

 switch (phydev->speed) {
 case 128:
  cmd_bits = CMD_SPEED_2500;
  break;
 case 129:
  cmd_bits = CMD_SPEED_1000;
  break;
 case 130:
  cmd_bits = CMD_SPEED_100;
  break;
 case 131:
  cmd_bits = CMD_SPEED_10;
  break;
 default:
  break;
 }
 cmd_bits <<= CMD_SPEED_SHIFT;

 if (phydev->duplex == DUPLEX_HALF)
  cmd_bits |= CMD_HD_EN;

 if (priv->old_pause != phydev->pause) {
  changed = 1;
  priv->old_pause = phydev->pause;
 }

 if (!phydev->pause)
  cmd_bits |= CMD_RX_PAUSE_IGNORE | CMD_TX_PAUSE_IGNORE;

 if (!changed)
  return;

 if (phydev->link) {
  reg = umac_readl(priv, UMAC_CMD);
  reg &= ~((CMD_SPEED_MASK << CMD_SPEED_SHIFT) |
   CMD_HD_EN | CMD_RX_PAUSE_IGNORE |
   CMD_TX_PAUSE_IGNORE);
  reg |= cmd_bits;
  umac_writel(priv, reg, UMAC_CMD);
 }
out:
 if (changed)
  phy_print_status(phydev);
}
