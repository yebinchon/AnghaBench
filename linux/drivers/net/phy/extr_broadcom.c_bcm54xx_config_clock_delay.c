
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interface; } ;


 int BCM54810_SHD_CLK_CTL ;
 int BCM54810_SHD_CLK_CTL_GTXCLK_EN ;
 int MII_BCM54XX_AUXCTL_MISC_WREN ;
 int MII_BCM54XX_AUXCTL_SHDWSEL_MISC ;
 int MII_BCM54XX_AUXCTL_SHDWSEL_MISC_RGMII_SKEW_EN ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_ID ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_RXID ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_TXID ;
 int bcm54xx_auxctl_read (struct phy_device*,int ) ;
 int bcm54xx_auxctl_write (struct phy_device*,int ,int) ;
 int bcm_phy_read_shadow (struct phy_device*,int ) ;
 int bcm_phy_write_shadow (struct phy_device*,int ,int) ;

__attribute__((used)) static int bcm54xx_config_clock_delay(struct phy_device *phydev)
{
 int rc, val;


 val = bcm54xx_auxctl_read(phydev, MII_BCM54XX_AUXCTL_SHDWSEL_MISC);
 val |= MII_BCM54XX_AUXCTL_MISC_WREN;
 if (phydev->interface == PHY_INTERFACE_MODE_RGMII ||
     phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID) {

  val &= ~MII_BCM54XX_AUXCTL_SHDWSEL_MISC_RGMII_SKEW_EN;
 }
 if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
     phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID) {

  val |= MII_BCM54XX_AUXCTL_SHDWSEL_MISC_RGMII_SKEW_EN;
 }
 rc = bcm54xx_auxctl_write(phydev, MII_BCM54XX_AUXCTL_SHDWSEL_MISC,
      val);
 if (rc < 0)
  return rc;


 val = bcm_phy_read_shadow(phydev, BCM54810_SHD_CLK_CTL);
 if (phydev->interface == PHY_INTERFACE_MODE_RGMII ||
     phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID) {

  val &= ~BCM54810_SHD_CLK_CTL_GTXCLK_EN;
 }
 if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
     phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID) {

  val |= BCM54810_SHD_CLK_CTL_GTXCLK_EN;
 }
 rc = bcm_phy_write_shadow(phydev, BCM54810_SHD_CLK_CTL, val);
 if (rc < 0)
  return rc;

 return 0;
}
