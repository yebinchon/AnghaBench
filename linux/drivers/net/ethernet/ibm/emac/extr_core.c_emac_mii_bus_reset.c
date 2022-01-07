
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int priv; } ;
struct emac_instance {int dummy; } ;


 int emac_reset (struct emac_instance*) ;
 struct emac_instance* netdev_priv (int ) ;

__attribute__((used)) static int emac_mii_bus_reset(struct mii_bus *bus)
{
 struct emac_instance *dev = netdev_priv(bus->priv);

 return emac_reset(dev);
}
