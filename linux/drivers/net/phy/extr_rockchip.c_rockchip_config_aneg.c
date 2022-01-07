
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int mdix; } ;


 int genphy_config_aneg (struct phy_device*) ;
 int rockchip_set_polarity (struct phy_device*,int ) ;

__attribute__((used)) static int rockchip_config_aneg(struct phy_device *phydev)
{
 int err;

 err = rockchip_set_polarity(phydev, phydev->mdix);
 if (err < 0)
  return err;

 return genphy_config_aneg(phydev);
}
