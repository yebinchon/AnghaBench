
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int priv; } ;


 int bcma_mdio_phy_read (int ,int,int) ;

__attribute__((used)) static int bcma_mdio_mii_read(struct mii_bus *bus, int mii_id, int regnum)
{
 return bcma_mdio_phy_read(bus->priv, mii_id, regnum);
}
