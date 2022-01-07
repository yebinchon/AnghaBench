
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int ADVERTISED_MPD ;
 int MII_CTRL1000 ;
 int genphy_config_aneg (struct phy_device*) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int xway_gphy14_config_aneg(struct phy_device *phydev)
{
 int reg, err;



 reg = phy_read(phydev, MII_CTRL1000);
 reg |= ADVERTISED_MPD;
 err = phy_write(phydev, MII_CTRL1000, reg);
 if (err)
  return err;

 return genphy_config_aneg(phydev);
}
