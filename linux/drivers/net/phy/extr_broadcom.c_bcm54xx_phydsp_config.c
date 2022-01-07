
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {TYPE_1__* drv; } ;
struct TYPE_2__ {scalar_t__ phy_id; } ;


 scalar_t__ BRCM_PHY_MODEL (struct phy_device*) ;
 int MII_BCM54XX_AUXCTL_ACTL_SMDSP_ENA ;
 int MII_BCM54XX_AUXCTL_ACTL_TX_6DB ;
 int MII_BCM54XX_AUXCTL_SHDWSEL_AUXCTL ;
 int MII_BCM54XX_EXP_EXP08 ;
 int MII_BCM54XX_EXP_EXP08_RJCT_2MHZ ;
 int MII_BCM54XX_EXP_EXP75 ;
 int MII_BCM54XX_EXP_EXP75_CM_OSC ;
 scalar_t__ PHY_ID_BCM50610 ;
 scalar_t__ PHY_ID_BCM50610M ;
 scalar_t__ PHY_ID_BCM57780 ;
 int bcm50610_a0_workaround (struct phy_device*) ;
 int bcm54xx_auxctl_write (struct phy_device*,int ,int) ;
 int bcm_phy_read_exp (struct phy_device*,int ) ;
 int bcm_phy_write_exp (struct phy_device*,int ,int) ;

__attribute__((used)) static int bcm54xx_phydsp_config(struct phy_device *phydev)
{
 int err, err2;


 err = bcm54xx_auxctl_write(phydev,
       MII_BCM54XX_AUXCTL_SHDWSEL_AUXCTL,
       MII_BCM54XX_AUXCTL_ACTL_SMDSP_ENA |
       MII_BCM54XX_AUXCTL_ACTL_TX_6DB);
 if (err < 0)
  return err;

 if (BRCM_PHY_MODEL(phydev) == PHY_ID_BCM50610 ||
     BRCM_PHY_MODEL(phydev) == PHY_ID_BCM50610M) {

  err = bcm_phy_write_exp(phydev, MII_BCM54XX_EXP_EXP08,
     MII_BCM54XX_EXP_EXP08_RJCT_2MHZ);
  if (err < 0)
   goto error;

  if (phydev->drv->phy_id == PHY_ID_BCM50610) {
   err = bcm50610_a0_workaround(phydev);
   if (err < 0)
    goto error;
  }
 }

 if (BRCM_PHY_MODEL(phydev) == PHY_ID_BCM57780) {
  int val;

  val = bcm_phy_read_exp(phydev, MII_BCM54XX_EXP_EXP75);
  if (val < 0)
   goto error;

  val |= MII_BCM54XX_EXP_EXP75_CM_OSC;
  err = bcm_phy_write_exp(phydev, MII_BCM54XX_EXP_EXP75, val);
 }

error:

 err2 = bcm54xx_auxctl_write(phydev,
        MII_BCM54XX_AUXCTL_SHDWSEL_AUXCTL,
        MII_BCM54XX_AUXCTL_ACTL_TX_6DB);


 return err ? err : err2;
}
