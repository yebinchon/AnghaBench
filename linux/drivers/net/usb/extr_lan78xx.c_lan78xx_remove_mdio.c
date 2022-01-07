
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan78xx_net {int mdiobus; } ;


 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;

__attribute__((used)) static void lan78xx_remove_mdio(struct lan78xx_net *dev)
{
 mdiobus_unregister(dev->mdiobus);
 mdiobus_free(dev->mdiobus);
}
