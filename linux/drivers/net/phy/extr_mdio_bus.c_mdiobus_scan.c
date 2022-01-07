
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int mdio; } ;
struct mii_bus {int dummy; } ;


 int ENODEV ;
 struct phy_device* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct phy_device*) ;
 struct phy_device* get_phy_device (struct mii_bus*,int,int) ;
 int of_mdiobus_link_mdiodev (struct mii_bus*,int *) ;
 int phy_device_free (struct phy_device*) ;
 int phy_device_register (struct phy_device*) ;

struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr)
{
 struct phy_device *phydev;
 int err;

 phydev = get_phy_device(bus, addr, 0);
 if (IS_ERR(phydev))
  return phydev;





 of_mdiobus_link_mdiodev(bus, &phydev->mdio);

 err = phy_device_register(phydev);
 if (err) {
  phy_device_free(phydev);
  return ERR_PTR(-ENODEV);
 }

 return phydev;
}
