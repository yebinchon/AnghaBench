
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axienet_local {int * mii_bus; } ;


 int mdiobus_free (int *) ;
 int mdiobus_unregister (int *) ;

void axienet_mdio_teardown(struct axienet_local *lp)
{
 mdiobus_unregister(lp->mii_bus);
 mdiobus_free(lp->mii_bus);
 lp->mii_bus = ((void*)0);
}
