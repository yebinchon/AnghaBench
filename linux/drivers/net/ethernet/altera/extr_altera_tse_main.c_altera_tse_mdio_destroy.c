
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct altera_tse_private {TYPE_1__* mdio; } ;
struct TYPE_3__ {int id; } ;


 int mdiobus_free (TYPE_1__*) ;
 int mdiobus_unregister (TYPE_1__*) ;
 int netdev_info (struct net_device*,char*,int ) ;
 struct altera_tse_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_drv (struct altera_tse_private*) ;

__attribute__((used)) static void altera_tse_mdio_destroy(struct net_device *dev)
{
 struct altera_tse_private *priv = netdev_priv(dev);

 if (priv->mdio == ((void*)0))
  return;

 if (netif_msg_drv(priv))
  netdev_info(dev, "MDIO bus %s: removed\n",
       priv->mdio->id);

 mdiobus_unregister(priv->mdio);
 mdiobus_free(priv->mdio);
 priv->mdio = ((void*)0);
}
