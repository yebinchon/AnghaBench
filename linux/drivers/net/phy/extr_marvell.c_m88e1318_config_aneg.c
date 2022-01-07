
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_88E1318S_PHY_MSCR1_PAD_ODD ;
 int MII_88E1318S_PHY_MSCR1_REG ;
 int MII_MARVELL_MSCR_PAGE ;
 int m88e1121_config_aneg (struct phy_device*) ;
 int phy_modify_paged (struct phy_device*,int ,int ,int ,int ) ;

__attribute__((used)) static int m88e1318_config_aneg(struct phy_device *phydev)
{
 int err;

 err = phy_modify_paged(phydev, MII_MARVELL_MSCR_PAGE,
          MII_88E1318S_PHY_MSCR1_REG,
          0, MII_88E1318S_PHY_MSCR1_PAD_ODD);
 if (err < 0)
  return err;

 return m88e1121_config_aneg(phydev);
}
