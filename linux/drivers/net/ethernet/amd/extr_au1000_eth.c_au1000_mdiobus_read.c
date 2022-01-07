
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mii_bus {struct net_device* priv; } ;


 int au1000_enable_mac (struct net_device* const,int ) ;
 int au1000_mdio_read (struct net_device* const,int,int) ;

__attribute__((used)) static int au1000_mdiobus_read(struct mii_bus *bus, int phy_addr, int regnum)
{
 struct net_device *const dev = bus->priv;




 au1000_enable_mac(dev, 0);

 return au1000_mdio_read(dev, phy_addr, regnum);
}
