
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int priv; } ;


 int emac_mdio_read (int ,int,int) ;

__attribute__((used)) static int emac_mii_bus_read(struct mii_bus *bus, int addr, int regnum)
{
 int ret = emac_mdio_read(bus->priv, addr, regnum);






 return ret < 0 ? 0xffff : ret;
}
