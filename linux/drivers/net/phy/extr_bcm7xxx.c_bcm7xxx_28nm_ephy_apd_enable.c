
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_BRCM_FET_BRCMTEST ;
 int MII_BRCM_FET_BT_SRE ;
 int MII_BRCM_FET_SHDW_AS2_APDE ;
 int MII_BRCM_FET_SHDW_AUXSTAT2 ;
 int phy_set_clr_bits (struct phy_device*,int ,int ,int ) ;

__attribute__((used)) static int bcm7xxx_28nm_ephy_apd_enable(struct phy_device *phydev)
{
 int ret;


 ret = phy_set_clr_bits(phydev, MII_BRCM_FET_BRCMTEST,
          MII_BRCM_FET_BT_SRE, 0);
 if (ret < 0)
  return ret;


 ret = phy_set_clr_bits(phydev, MII_BRCM_FET_SHDW_AUXSTAT2,
          MII_BRCM_FET_SHDW_AS2_APDE, 0);
 if (ret < 0)
  return ret;


 ret = phy_set_clr_bits(phydev, MII_BRCM_FET_BRCMTEST, 0,
          MII_BRCM_FET_BT_SRE);
 if (ret < 0)
  return ret;

 return 0;
}
