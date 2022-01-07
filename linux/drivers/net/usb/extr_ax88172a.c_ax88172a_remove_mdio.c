
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usbnet {int net; struct ax88172a_private* driver_priv; } ;
struct ax88172a_private {TYPE_1__* mdio; } ;
struct TYPE_3__ {int id; } ;


 int mdiobus_free (TYPE_1__*) ;
 int mdiobus_unregister (TYPE_1__*) ;
 int netdev_info (int ,char*,int ) ;

__attribute__((used)) static void ax88172a_remove_mdio(struct usbnet *dev)
{
 struct ax88172a_private *priv = dev->driver_priv;

 netdev_info(dev->net, "deregistering mdio bus %s\n", priv->mdio->id);
 mdiobus_unregister(priv->mdio);
 mdiobus_free(priv->mdio);
}
