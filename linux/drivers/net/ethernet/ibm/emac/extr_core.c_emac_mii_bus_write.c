
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {int priv; } ;


 int emac_mdio_write (int ,int,int,int ) ;

__attribute__((used)) static int emac_mii_bus_write(struct mii_bus *bus, int addr,
         int regnum, u16 val)
{
 emac_mdio_write(bus->priv, addr, regnum, val);
 return 0;
}
