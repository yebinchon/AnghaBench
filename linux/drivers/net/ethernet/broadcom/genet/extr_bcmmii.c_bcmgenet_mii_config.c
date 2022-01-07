
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct phy_device {int supported; } ;
struct net_device {struct phy_device* phydev; } ;
struct device {int dummy; } ;
struct bcmgenet_priv {int phy_interface; int ext_phy; scalar_t__ internal_phy; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int BIT (int) ;
 int BMCR_ISOLATE ;
 int CMD_LCL_LOOP_EN ;
 int CMD_SW_RESET ;
 int EINVAL ;
 int ETHTOOL_LINK_MODE_1000baseT_Full_BIT ;
 int EXT_RGMII_OOB_CTRL ;
 scalar_t__ GENET_IS_V1 (struct bcmgenet_priv*) ;
 scalar_t__ GENET_IS_V2 (struct bcmgenet_priv*) ;
 scalar_t__ GENET_IS_V3 (struct bcmgenet_priv*) ;
 int GENET_IS_V4 (struct bcmgenet_priv*) ;
 int MII_BMCR ;






 int PORT_MODE_EXT_EPHY ;
 int PORT_MODE_EXT_GPHY ;
 int PORT_MODE_EXT_RVMII_25 ;
 int PORT_MODE_EXT_RVMII_50 ;
 int PORT_MODE_INT_EPHY ;
 int PORT_MODE_INT_GPHY ;
 int RGMII_MODE_EN ;
 int RGMII_MODE_EN_V123 ;
 int SPEED_100 ;
 int SYS_PORT_CTRL ;
 int UMAC_CMD ;
 int bcmgenet_ext_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_ext_writel (struct bcmgenet_priv*,int,int ) ;
 int bcmgenet_moca_phy_setup (struct bcmgenet_priv*) ;
 int bcmgenet_sys_writel (struct bcmgenet_priv*,int,int ) ;
 int bcmgenet_umac_readl (struct bcmgenet_priv*,int ) ;
 int bcmgenet_umac_writel (struct bcmgenet_priv*,int,int ) ;
 int dev_err (struct device*,char*,int const) ;
 int dev_info (struct device*,char*,char const*) ;
 int linkmode_test_bit (int ,int ) ;
 int netdev_err (struct net_device*,char*) ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_set_max_speed (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;
 int udelay (int) ;

int bcmgenet_mii_config(struct net_device *dev, bool init)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);
 struct phy_device *phydev = dev->phydev;
 struct device *kdev = &priv->pdev->dev;
 const char *phy_name = ((void*)0);
 u32 id_mode_dis = 0;
 u32 port_ctrl;
 int bmcr = -1;
 int ret;
 u32 reg;


 reg = bcmgenet_umac_readl(priv, UMAC_CMD);
 if (reg & CMD_SW_RESET) {

  if (priv->phy_interface == 132) {
   ret = phy_read(phydev, MII_BMCR);
   if (ret >= 0) {
    bmcr = ret;
    ret = phy_write(phydev, MII_BMCR,
      bmcr | BMCR_ISOLATE);
   }
   if (ret) {
    netdev_err(dev, "failed to isolate PHY\n");
    return ret;
   }
  }

  bcmgenet_sys_writel(priv, PORT_MODE_EXT_GPHY, SYS_PORT_CTRL);



  udelay(4);
  reg &= ~(CMD_SW_RESET | CMD_LCL_LOOP_EN);
  bcmgenet_umac_writel(priv, reg, UMAC_CMD);

  udelay(2);
 }

 priv->ext_phy = !priv->internal_phy &&
   (priv->phy_interface != 131);

 switch (priv->phy_interface) {
 case 133:
 case 131:





  if (GENET_IS_V4(priv))
   port_ctrl = PORT_MODE_INT_GPHY;
  else
   port_ctrl = PORT_MODE_INT_EPHY;

  bcmgenet_sys_writel(priv, port_ctrl, SYS_PORT_CTRL);

  if (priv->internal_phy) {
   phy_name = "internal PHY";
  } else if (priv->phy_interface == 131) {
   phy_name = "MoCA";
   bcmgenet_moca_phy_setup(priv);
  }
  break;

 case 132:
  phy_name = "external MII";
  phy_set_max_speed(phydev, SPEED_100);
  bcmgenet_sys_writel(priv,
        PORT_MODE_EXT_EPHY, SYS_PORT_CTRL);

  if (bmcr >= 0)
   phy_write(phydev, MII_BMCR, bmcr);
  break;

 case 130:
  phy_name = "external RvMII";





  if (linkmode_test_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
          dev->phydev->supported))
   port_ctrl = PORT_MODE_EXT_RVMII_50;
  else
   port_ctrl = PORT_MODE_EXT_RVMII_25;
  bcmgenet_sys_writel(priv, port_ctrl, SYS_PORT_CTRL);
  break;

 case 129:






  id_mode_dis = BIT(16);

 case 128:
  if (id_mode_dis)
   phy_name = "external RGMII (no delay)";
  else
   phy_name = "external RGMII (TX delay)";
  bcmgenet_sys_writel(priv,
        PORT_MODE_EXT_GPHY, SYS_PORT_CTRL);
  break;
 default:
  dev_err(kdev, "unknown phy mode: %d\n", priv->phy_interface);
  return -EINVAL;
 }




 if (priv->ext_phy) {
  reg = bcmgenet_ext_readl(priv, EXT_RGMII_OOB_CTRL);
  reg |= id_mode_dis;
  if (GENET_IS_V1(priv) || GENET_IS_V2(priv) || GENET_IS_V3(priv))
   reg |= RGMII_MODE_EN_V123;
  else
   reg |= RGMII_MODE_EN;
  bcmgenet_ext_writel(priv, reg, EXT_RGMII_OOB_CTRL);
 }

 if (init)
  dev_info(kdev, "configuring instance for %s\n", phy_name);

 return 0;
}
