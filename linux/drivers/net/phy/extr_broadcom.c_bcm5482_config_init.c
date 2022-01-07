
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dev_flags; int duplex; int speed; int autoneg; } ;


 int AUTONEG_DISABLE ;
 int BCM5482_SHD_LEDS1 ;
 int BCM5482_SHD_LEDS1_LED1 (int ) ;
 int BCM5482_SHD_LEDS1_LED3 (int ) ;
 int BCM5482_SHD_MODE ;
 int BCM5482_SHD_MODE_1000BX ;
 int BCM5482_SHD_SSD ;
 int BCM5482_SHD_SSD_EN ;
 int BCM5482_SHD_SSD_LEDM ;
 int BCM5482_SSD_1000BX_CTL ;
 int BCM5482_SSD_1000BX_CTL_PWRDOWN ;
 int BCM5482_SSD_SGMII_SLAVE ;
 int BCM5482_SSD_SGMII_SLAVE_AD ;
 int BCM5482_SSD_SGMII_SLAVE_EN ;
 int BCM_LED_SRC_ACTIVITYLED ;
 int BCM_LED_SRC_LINKSPD2 ;
 int DUPLEX_FULL ;
 int MII_BCM54XX_EXP_SEL_SSD ;
 int PHY_BCM_FLAGS_MODE_1000BX ;
 int SPEED_1000 ;
 int bcm54xx_config_init (struct phy_device*) ;
 int bcm_phy_read_exp (struct phy_device*,int) ;
 int bcm_phy_read_shadow (struct phy_device*,int ) ;
 int bcm_phy_write_exp (struct phy_device*,int,int) ;
 int bcm_phy_write_shadow (struct phy_device*,int ,int) ;

__attribute__((used)) static int bcm5482_config_init(struct phy_device *phydev)
{
 int err, reg;

 err = bcm54xx_config_init(phydev);

 if (phydev->dev_flags & PHY_BCM_FLAGS_MODE_1000BX) {



  reg = bcm_phy_read_shadow(phydev, BCM5482_SHD_SSD);
  bcm_phy_write_shadow(phydev, BCM5482_SHD_SSD,
         reg |
         BCM5482_SHD_SSD_LEDM |
         BCM5482_SHD_SSD_EN);




  reg = BCM5482_SSD_SGMII_SLAVE | MII_BCM54XX_EXP_SEL_SSD;
  err = bcm_phy_read_exp(phydev, reg);
  if (err < 0)
   return err;
  err = bcm_phy_write_exp(phydev, reg, err |
     BCM5482_SSD_SGMII_SLAVE_EN |
     BCM5482_SSD_SGMII_SLAVE_AD);
  if (err < 0)
   return err;




  reg = BCM5482_SSD_1000BX_CTL | MII_BCM54XX_EXP_SEL_SSD;
  err = bcm_phy_read_exp(phydev, reg);
  if (err < 0)
   return err;
  err = bcm_phy_write_exp(phydev, reg,
     err & ~BCM5482_SSD_1000BX_CTL_PWRDOWN);
  if (err < 0)
   return err;




  reg = bcm_phy_read_shadow(phydev, BCM5482_SHD_MODE);
  bcm_phy_write_shadow(phydev, BCM5482_SHD_MODE,
         reg | BCM5482_SHD_MODE_1000BX);





  bcm_phy_write_shadow(phydev, BCM5482_SHD_LEDS1,
   BCM5482_SHD_LEDS1_LED1(BCM_LED_SRC_ACTIVITYLED) |
   BCM5482_SHD_LEDS1_LED3(BCM_LED_SRC_LINKSPD2));







  phydev->autoneg = AUTONEG_DISABLE;
  phydev->speed = SPEED_1000;
  phydev->duplex = DUPLEX_FULL;
 }

 return err;
}
