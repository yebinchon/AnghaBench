
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int dummy; } ;


 int MII_BCM54XX_EXP_DATA ;
 int MII_BCM54XX_EXP_SEL ;
 int phy_write (struct phy_device*,int ,int ) ;

int bcm_phy_write_exp(struct phy_device *phydev, u16 reg, u16 val)
{
 int rc;

 rc = phy_write(phydev, MII_BCM54XX_EXP_SEL, reg);
 if (rc < 0)
  return rc;

 return phy_write(phydev, MII_BCM54XX_EXP_DATA, val);
}
