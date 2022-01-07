
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; } ;
struct mii_bus {scalar_t__ priv; } ;


 int asix_mdio_read (int ,int,int) ;

__attribute__((used)) static int asix_mdio_bus_read(struct mii_bus *bus, int phy_id, int regnum)
{
 return asix_mdio_read(((struct usbnet *)bus->priv)->net, phy_id,
         regnum);
}
