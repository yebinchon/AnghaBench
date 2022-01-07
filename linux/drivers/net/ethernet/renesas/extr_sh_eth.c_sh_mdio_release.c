
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_eth_private {int mii_bus; } ;


 int free_mdio_bitbang (int ) ;
 int mdiobus_unregister (int ) ;

__attribute__((used)) static int sh_mdio_release(struct sh_eth_private *mdp)
{

 mdiobus_unregister(mdp->mii_bus);


 free_mdio_bitbang(mdp->mii_bus);

 return 0;
}
