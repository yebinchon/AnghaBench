
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arc_emac_priv {int * bus; } ;


 int mdiobus_free (int *) ;
 int mdiobus_unregister (int *) ;

int arc_mdio_remove(struct arc_emac_priv *priv)
{
 mdiobus_unregister(priv->bus);
 mdiobus_free(priv->bus);
 priv->bus = ((void*)0);

 return 0;
}
