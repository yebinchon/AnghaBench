
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int mdix_ctrl; } ;


 int ADIN1300_AUTO_MDI_EN ;
 int ADIN1300_MAN_MDIX_EN ;
 int ADIN1300_PHY_CTRL1 ;
 int EINVAL ;



 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int adin_config_mdix(struct phy_device *phydev)
{
 bool auto_en, mdix_en;
 int reg;

 mdix_en = 0;
 auto_en = 0;
 switch (phydev->mdix_ctrl) {
 case 130:
  break;
 case 128:
  mdix_en = 1;
  break;
 case 129:
  auto_en = 1;
  break;
 default:
  return -EINVAL;
 }

 reg = phy_read(phydev, ADIN1300_PHY_CTRL1);
 if (reg < 0)
  return reg;

 if (mdix_en)
  reg |= ADIN1300_MAN_MDIX_EN;
 else
  reg &= ~ADIN1300_MAN_MDIX_EN;

 if (auto_en)
  reg |= ADIN1300_AUTO_MDI_EN;
 else
  reg &= ~ADIN1300_AUTO_MDI_EN;

 return phy_write(phydev, ADIN1300_PHY_CTRL1, reg);
}
