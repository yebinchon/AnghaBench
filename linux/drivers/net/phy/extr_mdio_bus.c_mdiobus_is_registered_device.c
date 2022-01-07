
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int* mdio_map; } ;



bool mdiobus_is_registered_device(struct mii_bus *bus, int addr)
{
 return bus->mdio_map[addr];
}
