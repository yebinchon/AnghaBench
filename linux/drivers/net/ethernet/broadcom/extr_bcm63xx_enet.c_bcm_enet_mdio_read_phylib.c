
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int priv; } ;


 int bcm_enet_mdio_read (int ,int,int) ;

__attribute__((used)) static int bcm_enet_mdio_read_phylib(struct mii_bus *bus, int mii_id,
         int regnum)
{
 return bcm_enet_mdio_read(bus->priv, mii_id, regnum);
}
