
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ autoneg; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int BCM54XX_SHD_APD ;
 int BCM54XX_SHD_APD_EN ;
 int BCM54XX_SHD_SCR3 ;
 int BCM54XX_SHD_SCR3_DLLAPD_DIS ;
 int BCM_APD_CLR_MASK ;
 int BCM_APD_SINGLELP_EN ;
 int BCM_NO_ANEG_APD_EN ;
 int bcm_phy_read_shadow (struct phy_device*,int ) ;
 int bcm_phy_write_shadow (struct phy_device*,int ,int) ;

int bcm_phy_enable_apd(struct phy_device *phydev, bool dll_pwr_down)
{
 int val;

 if (dll_pwr_down) {
  val = bcm_phy_read_shadow(phydev, BCM54XX_SHD_SCR3);
  if (val < 0)
   return val;

  val |= BCM54XX_SHD_SCR3_DLLAPD_DIS;
  bcm_phy_write_shadow(phydev, BCM54XX_SHD_SCR3, val);
 }

 val = bcm_phy_read_shadow(phydev, BCM54XX_SHD_APD);
 if (val < 0)
  return val;


 val &= BCM_APD_CLR_MASK;

 if (phydev->autoneg == AUTONEG_ENABLE)
  val |= BCM54XX_SHD_APD_EN;
 else
  val |= BCM_NO_ANEG_APD_EN;


 val |= BCM_APD_SINGLELP_EN;


 return bcm_phy_write_shadow(phydev, BCM54XX_SHD_APD, val);
}
