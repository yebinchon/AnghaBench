
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int attached_dev; } ;
struct lan78xx_net {int interface; } ;


 int MDIO_MMD_WIS ;
 int PHY_INTERFACE_MODE_RGMII_RXID ;
 struct lan78xx_net* netdev_priv (int ) ;
 int phy_write_mmd (struct phy_device*,int ,int,int) ;

__attribute__((used)) static int ksz9031rnx_fixup(struct phy_device *phydev)
{
 struct lan78xx_net *dev = netdev_priv(phydev->attached_dev);



 phy_write_mmd(phydev, MDIO_MMD_WIS, 4, 0x0077);

 phy_write_mmd(phydev, MDIO_MMD_WIS, 5, 0x7777);

 phy_write_mmd(phydev, MDIO_MMD_WIS, 8, 0x1FF);

 dev->interface = PHY_INTERFACE_MODE_RGMII_RXID;

 return 1;
}
