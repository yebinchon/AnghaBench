
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_BCM54XX_EXP_AADJ1CH0 ;
 int MII_BCM54XX_EXP_AADJ1CH0_SWP_ABCD_OEN ;
 int MII_BCM54XX_EXP_AADJ1CH0_SWSEL_THPF ;
 int MII_BCM54XX_EXP_AADJ1CH3 ;
 int MII_BCM54XX_EXP_AADJ1CH3_ADCCKADJ ;
 int MII_BCM54XX_EXP_EXP75 ;
 int MII_BCM54XX_EXP_EXP75_VDACCTRL ;
 int MII_BCM54XX_EXP_EXP96 ;
 int MII_BCM54XX_EXP_EXP96_MYST ;
 int MII_BCM54XX_EXP_EXP97 ;
 int MII_BCM54XX_EXP_EXP97_MYST ;
 int bcm_phy_write_exp (struct phy_device*,int ,int) ;

__attribute__((used)) static int bcm50610_a0_workaround(struct phy_device *phydev)
{
 int err;

 err = bcm_phy_write_exp(phydev, MII_BCM54XX_EXP_AADJ1CH0,
    MII_BCM54XX_EXP_AADJ1CH0_SWP_ABCD_OEN |
    MII_BCM54XX_EXP_AADJ1CH0_SWSEL_THPF);
 if (err < 0)
  return err;

 err = bcm_phy_write_exp(phydev, MII_BCM54XX_EXP_AADJ1CH3,
    MII_BCM54XX_EXP_AADJ1CH3_ADCCKADJ);
 if (err < 0)
  return err;

 err = bcm_phy_write_exp(phydev, MII_BCM54XX_EXP_EXP75,
    MII_BCM54XX_EXP_EXP75_VDACCTRL);
 if (err < 0)
  return err;

 err = bcm_phy_write_exp(phydev, MII_BCM54XX_EXP_EXP96,
    MII_BCM54XX_EXP_EXP96_MYST);
 if (err < 0)
  return err;

 err = bcm_phy_write_exp(phydev, MII_BCM54XX_EXP_EXP97,
    MII_BCM54XX_EXP_EXP97_MYST);

 return err;
}
