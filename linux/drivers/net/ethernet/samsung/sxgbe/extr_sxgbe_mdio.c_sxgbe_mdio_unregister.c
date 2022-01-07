
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sxgbe_priv_data {TYPE_1__* mii; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int * priv; } ;


 int mdiobus_free (TYPE_1__*) ;
 int mdiobus_unregister (TYPE_1__*) ;
 struct sxgbe_priv_data* netdev_priv (struct net_device*) ;

int sxgbe_mdio_unregister(struct net_device *ndev)
{
 struct sxgbe_priv_data *priv = netdev_priv(ndev);

 if (!priv->mii)
  return 0;

 mdiobus_unregister(priv->mii);
 priv->mii->priv = ((void*)0);
 mdiobus_free(priv->mii);
 priv->mii = ((void*)0);

 return 0;
}
