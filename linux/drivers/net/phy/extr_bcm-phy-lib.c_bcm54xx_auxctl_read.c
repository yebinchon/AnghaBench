
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int dummy; } ;


 int MII_BCM54XX_AUXCTL_SHDWSEL_MASK ;
 int MII_BCM54XX_AUXCTL_SHDWSEL_READ_SHIFT ;
 int MII_BCM54XX_AUX_CTL ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

int bcm54xx_auxctl_read(struct phy_device *phydev, u16 regnum)
{



 phy_write(phydev, MII_BCM54XX_AUX_CTL, MII_BCM54XX_AUXCTL_SHDWSEL_MASK |
    regnum << MII_BCM54XX_AUXCTL_SHDWSEL_READ_SHIFT);
 return phy_read(phydev, MII_BCM54XX_AUX_CTL);
}
