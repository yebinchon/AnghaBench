
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_BCM54XX_AUX_CTL ;
 int MII_BRCM_CORE_BASE1E ;
 int MII_BRCM_CORE_EXPB0 ;
 int MII_BRCM_CORE_EXPB1 ;
 int bcm_phy_write_exp_sel (struct phy_device*,int ,int) ;
 int bcm_phy_write_misc (struct phy_device*,int,int,int) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int bcm_cygnus_afe_config(struct phy_device *phydev)
{
 int rc;


 rc = phy_write(phydev, MII_BCM54XX_AUX_CTL, 0x0c30);
 if (rc < 0)
  return rc;


 rc = bcm_phy_write_misc(phydev, 0x39, 0x01, 0xA7C8);
 if (rc < 0)
  return rc;


 rc = bcm_phy_write_misc(phydev, 0x3A, 0x00, 0x0803);
 if (rc < 0)
  return rc;


 rc = bcm_phy_write_misc(phydev, 0x3A, 0x01, 0xA740);
 if (rc < 0)
  return rc;


 rc = bcm_phy_write_misc(phydev, 0x3A, 0x03, 0x8400);
 if (rc < 0)
  return rc;


 rc = bcm_phy_write_misc(phydev, 0x3B, 0x00, 0x0004);
 if (rc < 0)
  return rc;


 rc = phy_write(phydev, MII_BRCM_CORE_BASE1E, 0x02);
 if (rc < 0)
  return rc;


 rc = bcm_phy_write_exp_sel(phydev, MII_BRCM_CORE_EXPB1, 0x10);
 if (rc < 0)
  return rc;


 rc = bcm_phy_write_exp_sel(phydev, MII_BRCM_CORE_EXPB0, 0x10);
 if (rc < 0)
  return rc;


 rc = bcm_phy_write_exp_sel(phydev, MII_BRCM_CORE_EXPB0, 0x00);

 return 0;
}
