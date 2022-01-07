
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dev_flags; } ;


 int BCM54810_EXP_BROADREACH_LRE_MISC_CTL ;
 int BCM54810_EXP_BROADREACH_LRE_MISC_CTL_EN ;
 int BCM5482_SHD_LEDS1 ;
 int BCM5482_SHD_LEDS1_LED1 (int ) ;
 int BCM5482_SHD_LEDS1_LED3 (int ) ;
 int BCM54XX_SHD_RGMII_MODE ;
 int BCM_EXP_MULTICOLOR ;
 int BCM_LED_MULTICOLOR_IN_PHASE ;
 int BCM_LED_MULTICOLOR_LINK_ACT ;
 int BCM_LED_SRC_MULTICOLOR1 ;
 scalar_t__ BRCM_PHY_MODEL (struct phy_device*) ;
 int MII_BCM54XX_ECR ;
 int MII_BCM54XX_ECR_IM ;
 int MII_BCM54XX_IMR ;
 int MII_BCM54XX_INT_DUPLEX ;
 int MII_BCM54XX_INT_LINK ;
 int MII_BCM54XX_INT_SPEED ;
 int PHY_BRCM_AUTO_PWRDWN_ENABLE ;
 int PHY_BRCM_CLEAR_RGMII_MODE ;
 int PHY_BRCM_DIS_TXCRXC_NOENRGY ;
 int PHY_BRCM_RX_REFCLK_UNUSED ;
 scalar_t__ PHY_ID_BCM50610 ;
 scalar_t__ PHY_ID_BCM50610M ;
 scalar_t__ PHY_ID_BCM54210E ;
 scalar_t__ PHY_ID_BCM54612E ;
 scalar_t__ PHY_ID_BCM54810 ;
 int bcm54210e_config_init (struct phy_device*) ;
 int bcm54612e_config_init (struct phy_device*) ;
 int bcm54xx_adjust_rxrefclk (struct phy_device*) ;
 int bcm54xx_phydsp_config (struct phy_device*) ;
 int bcm_phy_read_exp (struct phy_device*,int ) ;
 int bcm_phy_write_exp (struct phy_device*,int ,int) ;
 int bcm_phy_write_shadow (struct phy_device*,int ,int) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int bcm54xx_config_init(struct phy_device *phydev)
{
 int reg, err, val;

 reg = phy_read(phydev, MII_BCM54XX_ECR);
 if (reg < 0)
  return reg;


 reg |= MII_BCM54XX_ECR_IM;
 err = phy_write(phydev, MII_BCM54XX_ECR, reg);
 if (err < 0)
  return err;


 reg = ~(MII_BCM54XX_INT_DUPLEX |
  MII_BCM54XX_INT_SPEED |
  MII_BCM54XX_INT_LINK);
 err = phy_write(phydev, MII_BCM54XX_IMR, reg);
 if (err < 0)
  return err;

 if ((BRCM_PHY_MODEL(phydev) == PHY_ID_BCM50610 ||
      BRCM_PHY_MODEL(phydev) == PHY_ID_BCM50610M) &&
     (phydev->dev_flags & PHY_BRCM_CLEAR_RGMII_MODE))
  bcm_phy_write_shadow(phydev, BCM54XX_SHD_RGMII_MODE, 0);

 if ((phydev->dev_flags & PHY_BRCM_RX_REFCLK_UNUSED) ||
     (phydev->dev_flags & PHY_BRCM_DIS_TXCRXC_NOENRGY) ||
     (phydev->dev_flags & PHY_BRCM_AUTO_PWRDWN_ENABLE))
  bcm54xx_adjust_rxrefclk(phydev);

 if (BRCM_PHY_MODEL(phydev) == PHY_ID_BCM54210E) {
  err = bcm54210e_config_init(phydev);
  if (err)
   return err;
 } else if (BRCM_PHY_MODEL(phydev) == PHY_ID_BCM54612E) {
  err = bcm54612e_config_init(phydev);
  if (err)
   return err;
 } else if (BRCM_PHY_MODEL(phydev) == PHY_ID_BCM54810) {

  val = bcm_phy_read_exp(phydev,
           BCM54810_EXP_BROADREACH_LRE_MISC_CTL);
  val &= ~BCM54810_EXP_BROADREACH_LRE_MISC_CTL_EN;
  err = bcm_phy_write_exp(phydev,
     BCM54810_EXP_BROADREACH_LRE_MISC_CTL,
     val);
  if (err < 0)
   return err;
 }

 bcm54xx_phydsp_config(phydev);





 val = BCM5482_SHD_LEDS1_LED1(BCM_LED_SRC_MULTICOLOR1) |
  BCM5482_SHD_LEDS1_LED3(BCM_LED_SRC_MULTICOLOR1);
 bcm_phy_write_shadow(phydev, BCM5482_SHD_LEDS1, val);

 val = BCM_LED_MULTICOLOR_IN_PHASE |
  BCM5482_SHD_LEDS1_LED1(BCM_LED_MULTICOLOR_LINK_ACT) |
  BCM5482_SHD_LEDS1_LED3(BCM_LED_MULTICOLOR_LINK_ACT);
 bcm_phy_write_exp(phydev, BCM_EXP_MULTICOLOR, val);

 return 0;
}
