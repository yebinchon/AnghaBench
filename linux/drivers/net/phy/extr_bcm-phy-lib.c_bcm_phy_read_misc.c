
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int dummy; } ;


 int MII_BCM54XX_AUXCTL_ACTL_SMDSP_ENA ;
 int MII_BCM54XX_AUXCTL_SHDWSEL_MISC ;
 int MII_BCM54XX_AUX_CTL ;
 int MII_BCM_CHANNEL_WIDTH ;
 int bcm_phy_read_exp (struct phy_device*,int) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

int bcm_phy_read_misc(struct phy_device *phydev,
        u16 reg, u16 chl)
{
 int rc;
 int tmp;

 rc = phy_write(phydev, MII_BCM54XX_AUX_CTL,
         MII_BCM54XX_AUXCTL_SHDWSEL_MISC);
 if (rc < 0)
  return rc;

 tmp = phy_read(phydev, MII_BCM54XX_AUX_CTL);
 tmp |= MII_BCM54XX_AUXCTL_ACTL_SMDSP_ENA;
 rc = phy_write(phydev, MII_BCM54XX_AUX_CTL, tmp);
 if (rc < 0)
  return rc;

 tmp = (chl * MII_BCM_CHANNEL_WIDTH) | reg;
 rc = bcm_phy_read_exp(phydev, tmp);

 return rc;
}
