
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct mii_bus {struct net_device* priv; } ;


 int au1000_enable_mac (struct net_device* const,int ) ;
 int au1000_mdio_write (struct net_device* const,int,int,int ) ;

__attribute__((used)) static int au1000_mdiobus_write(struct mii_bus *bus, int phy_addr, int regnum,
    u16 value)
{
 struct net_device *const dev = bus->priv;




 au1000_enable_mac(dev, 0);

 au1000_mdio_write(dev, phy_addr, regnum, value);
 return 0;
}
