
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interface; int dev_flags; } ;


 int BCM54612E_EXP_SPARE0 ;
 int BCM54612E_LED4_CLK125OUT_EN ;
 int MII_BCM54XX_AUXCTL_MISC_WREN ;
 int MII_BCM54XX_AUXCTL_SHDWSEL_MASK ;
 int MII_BCM54XX_AUXCTL_SHDWSEL_MISC ;
 int MII_BCM54XX_AUXCTL_SHDWSEL_MISC_RGMII_SKEW_EN ;
 int PHY_BRCM_RX_REFCLK_UNUSED ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_ID ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_RXID ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_TXID ;
 int bcm54xx_auxctl_read (struct phy_device*,int ) ;
 int bcm54xx_auxctl_write (struct phy_device*,int ,int) ;
 int bcm_phy_read_exp (struct phy_device*,int ) ;
 int bcm_phy_write_exp (struct phy_device*,int ,int) ;
 int bcm_phy_write_shadow (struct phy_device*,int,int ) ;

__attribute__((used)) static int bcm54612e_config_init(struct phy_device *phydev)
{
 int reg;


 if ((phydev->interface != PHY_INTERFACE_MODE_RGMII_ID) &&
     (phydev->interface != PHY_INTERFACE_MODE_RGMII_TXID)) {


  bcm_phy_write_shadow(phydev, 0x03, 0);
 }


 if ((phydev->interface != PHY_INTERFACE_MODE_RGMII_ID) &&
     (phydev->interface != PHY_INTERFACE_MODE_RGMII_RXID)) {
  reg = bcm54xx_auxctl_read(phydev,
       MII_BCM54XX_AUXCTL_SHDWSEL_MISC);

  reg &= ~MII_BCM54XX_AUXCTL_SHDWSEL_MISC_RGMII_SKEW_EN;

  reg &= ~MII_BCM54XX_AUXCTL_SHDWSEL_MASK;
  bcm54xx_auxctl_write(phydev, MII_BCM54XX_AUXCTL_SHDWSEL_MISC,
         MII_BCM54XX_AUXCTL_MISC_WREN | reg);
 }


 if (!(phydev->dev_flags & PHY_BRCM_RX_REFCLK_UNUSED)) {
  int err;

  reg = bcm_phy_read_exp(phydev, BCM54612E_EXP_SPARE0);
  err = bcm_phy_write_exp(phydev, BCM54612E_EXP_SPARE0,
     BCM54612E_LED4_CLK125OUT_EN | reg);

  if (err < 0)
   return err;
 }

 return 0;
}
