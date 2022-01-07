
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int m88e1510_hwmon_probe (struct phy_device*) ;
 int marvell_probe (struct phy_device*) ;

__attribute__((used)) static int m88e1510_probe(struct phy_device *phydev)
{
 int err;

 err = marvell_probe(phydev);
 if (err)
  return err;

 return m88e1510_hwmon_probe(phydev);
}
