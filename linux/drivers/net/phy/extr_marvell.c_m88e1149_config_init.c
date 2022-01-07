
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_MARVELL_COPPER_PAGE ;
 int MII_MARVELL_MSCR_PAGE ;
 int genphy_soft_reset (struct phy_device*) ;
 int marvell_of_reg_init (struct phy_device*) ;
 int marvell_set_page (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int,int) ;

__attribute__((used)) static int m88e1149_config_init(struct phy_device *phydev)
{
 int err;


 err = marvell_set_page(phydev, MII_MARVELL_MSCR_PAGE);
 if (err < 0)
  return err;


 err = phy_write(phydev, 0x15, 0x1048);
 if (err < 0)
  return err;

 err = marvell_of_reg_init(phydev);
 if (err < 0)
  return err;


 err = marvell_set_page(phydev, MII_MARVELL_COPPER_PAGE);
 if (err < 0)
  return err;

 return genphy_soft_reset(phydev);
}
