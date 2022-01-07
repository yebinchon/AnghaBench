
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 int MII_VSC85XX_INT_MASK ;
 int MII_VSC85XX_INT_MASK_MASK ;
 int MII_VSC85XX_INT_STATUS ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int vsc85xx_config_intr(struct phy_device *phydev)
{
 int rc;

 if (phydev->interrupts == PHY_INTERRUPT_ENABLED) {
  rc = phy_write(phydev, MII_VSC85XX_INT_MASK,
          MII_VSC85XX_INT_MASK_MASK);
 } else {
  rc = phy_write(phydev, MII_VSC85XX_INT_MASK, 0);
  if (rc < 0)
   return rc;
  rc = phy_read(phydev, MII_VSC85XX_INT_STATUS);
 }

 return rc;
}
