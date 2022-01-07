
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;


 int mdiobus_free (struct mii_bus*) ;
 int mdiobus_unregister (struct mii_bus*) ;

void bcma_mdio_mii_unregister(struct mii_bus *mii_bus)
{
 if (!mii_bus)
  return;

 mdiobus_unregister(mii_bus);
 mdiobus_free(mii_bus);
}
