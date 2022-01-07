
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {void* mdix; } ;


 int ADIN1300_AUTO_MDI_EN ;
 int ADIN1300_MAN_MDIX_EN ;
 int ADIN1300_PAIR_01_SWAP ;
 int ADIN1300_PHY_CTRL1 ;
 int ADIN1300_PHY_STATUS1 ;
 void* ETH_TP_MDI ;
 void* ETH_TP_MDI_X ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int adin_mdix_update(struct phy_device *phydev)
{
 bool auto_en, mdix_en;
 bool swapped;
 int reg;

 reg = phy_read(phydev, ADIN1300_PHY_CTRL1);
 if (reg < 0)
  return reg;

 auto_en = !!(reg & ADIN1300_AUTO_MDI_EN);
 mdix_en = !!(reg & ADIN1300_MAN_MDIX_EN);


 if (!auto_en) {
  if (mdix_en)
   phydev->mdix = ETH_TP_MDI_X;
  else
   phydev->mdix = ETH_TP_MDI;
  return 0;
 }






 reg = phy_read(phydev, ADIN1300_PHY_STATUS1);
 if (reg < 0)
  return reg;

 swapped = !!(reg & ADIN1300_PAIR_01_SWAP);

 if (mdix_en != swapped)
  phydev->mdix = ETH_TP_MDI_X;
 else
  phydev->mdix = ETH_TP_MDI;

 return 0;
}
