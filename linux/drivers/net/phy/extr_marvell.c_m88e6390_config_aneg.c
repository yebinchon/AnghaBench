
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int m88e1510_config_aneg (struct phy_device*) ;
 int m88e6390_errata (struct phy_device*) ;

__attribute__((used)) static int m88e6390_config_aneg(struct phy_device *phydev)
{
 int err;

 err = m88e6390_errata(phydev);
 if (err)
  return err;

 return m88e1510_config_aneg(phydev);
}
