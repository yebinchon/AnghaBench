
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {int net; } ;
struct mii_bus {scalar_t__ priv; } ;


 int asix_mdio_write (int ,int,int,int ) ;

__attribute__((used)) static int asix_mdio_bus_write(struct mii_bus *bus, int phy_id, int regnum,
          u16 val)
{
 asix_mdio_write(((struct usbnet *)bus->priv)->net, phy_id, regnum, val);
 return 0;
}
