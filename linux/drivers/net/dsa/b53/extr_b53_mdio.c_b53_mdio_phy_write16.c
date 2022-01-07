
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {int dummy; } ;
struct b53_device {struct mii_bus* bus; } ;


 int mdiobus_write_nested (struct mii_bus*,int,int,int ) ;

__attribute__((used)) static int b53_mdio_phy_write16(struct b53_device *dev, int addr, int reg,
    u16 value)
{
 struct mii_bus *bus = dev->bus;

 return mdiobus_write_nested(bus, addr, reg, value);
}
