
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct bcmgenet_priv {int dummy; } ;


 int EXT_CFG_IDDQ_BIAS ;
 int EXT_CFG_PWR_DOWN ;
 int EXT_CK25_DIS ;
 int EXT_GPHY_CTRL ;
 int EXT_GPHY_RESET ;
 scalar_t__ GENET_IS_V4 (struct bcmgenet_priv*) ;
 int bcmgenet_ext_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_ext_writel (struct bcmgenet_priv*,int,int ) ;
 int mdelay (int) ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;
 int udelay (int) ;

void bcmgenet_phy_power_set(struct net_device *dev, bool enable)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);
 u32 reg = 0;


 if (GENET_IS_V4(priv)) {
  reg = bcmgenet_ext_readl(priv, EXT_GPHY_CTRL);
  if (enable) {
   reg &= ~EXT_CK25_DIS;
   bcmgenet_ext_writel(priv, reg, EXT_GPHY_CTRL);
   mdelay(1);

   reg &= ~(EXT_CFG_IDDQ_BIAS | EXT_CFG_PWR_DOWN);
   reg |= EXT_GPHY_RESET;
   bcmgenet_ext_writel(priv, reg, EXT_GPHY_CTRL);
   mdelay(1);

   reg &= ~EXT_GPHY_RESET;
  } else {
   reg |= EXT_CFG_IDDQ_BIAS | EXT_CFG_PWR_DOWN |
          EXT_GPHY_RESET;
   bcmgenet_ext_writel(priv, reg, EXT_GPHY_CTRL);
   mdelay(1);
   reg |= EXT_CK25_DIS;
  }
  bcmgenet_ext_writel(priv, reg, EXT_GPHY_CTRL);
  udelay(60);
 } else {
  mdelay(1);
 }
}
