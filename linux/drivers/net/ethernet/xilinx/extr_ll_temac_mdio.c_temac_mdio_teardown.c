
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temac_local {int mii_bus; } ;


 int mdiobus_unregister (int ) ;

void temac_mdio_teardown(struct temac_local *lp)
{
 mdiobus_unregister(lp->mii_bus);
}
