
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int genphy_soft_reset (struct phy_device*) ;
 int marvell_config_aneg (struct phy_device*) ;
 int phy_write (struct phy_device*,int,int) ;

__attribute__((used)) static int m88e1101_config_aneg(struct phy_device *phydev)
{
 int err;





 err = genphy_soft_reset(phydev);
 if (err < 0)
  return err;

 err = phy_write(phydev, 0x1d, 0x1f);
 if (err < 0)
  return err;

 err = phy_write(phydev, 0x1e, 0x200c);
 if (err < 0)
  return err;

 err = phy_write(phydev, 0x1d, 0x5);
 if (err < 0)
  return err;

 err = phy_write(phydev, 0x1e, 0);
 if (err < 0)
  return err;

 err = phy_write(phydev, 0x1e, 0x100);
 if (err < 0)
  return err;

 return marvell_config_aneg(phydev);
}
