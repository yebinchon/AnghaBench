
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct phy_device {TYPE_1__ mdio; } ;
struct net_device {int dev; } ;
struct gfar_private {int tbi_node; } ;


 int ADVERTISE_1000XFULL ;
 int ADVERTISE_1000XPAUSE ;
 int ADVERTISE_1000XPSE_ASYM ;
 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int BMCR_FULLDPLX ;
 int BMCR_SPEED1000 ;
 int BMSR_LSTATUS ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int MII_BMSR ;
 int MII_TBICON ;
 int TBICON_CLK_SELECT ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 struct phy_device* of_phy_find_device (int ) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;
 int put_device (int *) ;

__attribute__((used)) static void gfar_configure_serdes(struct net_device *dev)
{
 struct gfar_private *priv = netdev_priv(dev);
 struct phy_device *tbiphy;

 if (!priv->tbi_node) {
  dev_warn(&dev->dev, "error: SGMII mode requires that the "
        "device tree specify a tbi-handle\n");
  return;
 }

 tbiphy = of_phy_find_device(priv->tbi_node);
 if (!tbiphy) {
  dev_err(&dev->dev, "error: Could not get TBI device\n");
  return;
 }






 if (phy_read(tbiphy, MII_BMSR) & BMSR_LSTATUS) {
  put_device(&tbiphy->mdio.dev);
  return;
 }


 phy_write(tbiphy, MII_TBICON, TBICON_CLK_SELECT);

 phy_write(tbiphy, MII_ADVERTISE,
    ADVERTISE_1000XFULL | ADVERTISE_1000XPAUSE |
    ADVERTISE_1000XPSE_ASYM);

 phy_write(tbiphy, MII_BMCR,
    BMCR_ANENABLE | BMCR_ANRESTART | BMCR_FULLDPLX |
    BMCR_SPEED1000);

 put_device(&tbiphy->mdio.dev);
}
