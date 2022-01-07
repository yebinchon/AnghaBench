
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct mii_bus {int dummy; } ;


 int PHY_MAX_ADDR ;
 struct phy_device* mdiobus_get_phy (struct mii_bus*,int) ;

struct phy_device *phy_find_first(struct mii_bus *bus)
{
 struct phy_device *phydev;
 int addr;

 for (addr = 0; addr < PHY_MAX_ADDR; addr++) {
  phydev = mdiobus_get_phy(bus, addr);
  if (phydev)
   return phydev;
 }
 return ((void*)0);
}
