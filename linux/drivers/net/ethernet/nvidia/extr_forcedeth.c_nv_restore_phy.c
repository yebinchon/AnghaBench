
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct fe_priv {scalar_t__ phy_oui; scalar_t__ phy_model; int phyaddr; } ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int MII_BMCR ;
 int MII_READ ;
 scalar_t__ NV_CROSSOVER_DETECTION_DISABLED ;
 scalar_t__ PHY_MODEL_REALTEK_8201 ;
 scalar_t__ PHY_OUI_REALTEK ;
 int PHY_REALTEK_INIT1 ;
 int PHY_REALTEK_INIT3 ;
 int PHY_REALTEK_INIT8 ;
 int PHY_REALTEK_INIT_MSK1 ;
 int PHY_REALTEK_INIT_REG1 ;
 int PHY_REALTEK_INIT_REG2 ;
 int mii_rw (struct net_device*,int ,int ,int) ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 scalar_t__ phy_cross ;

__attribute__((used)) static void nv_restore_phy(struct net_device *dev)
{
 struct fe_priv *np = netdev_priv(dev);
 u16 phy_reserved, mii_control;

 if (np->phy_oui == PHY_OUI_REALTEK &&
     np->phy_model == PHY_MODEL_REALTEK_8201 &&
     phy_cross == NV_CROSSOVER_DETECTION_DISABLED) {
  mii_rw(dev, np->phyaddr, PHY_REALTEK_INIT_REG1, PHY_REALTEK_INIT3);
  phy_reserved = mii_rw(dev, np->phyaddr, PHY_REALTEK_INIT_REG2, MII_READ);
  phy_reserved &= ~PHY_REALTEK_INIT_MSK1;
  phy_reserved |= PHY_REALTEK_INIT8;
  mii_rw(dev, np->phyaddr, PHY_REALTEK_INIT_REG2, phy_reserved);
  mii_rw(dev, np->phyaddr, PHY_REALTEK_INIT_REG1, PHY_REALTEK_INIT1);


  mii_control = mii_rw(dev, np->phyaddr, MII_BMCR, MII_READ);
  mii_control |= (BMCR_ANRESTART | BMCR_ANENABLE);
  mii_rw(dev, np->phyaddr, MII_BMCR, mii_control);
 }
}
