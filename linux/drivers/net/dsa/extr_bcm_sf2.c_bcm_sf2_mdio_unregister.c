
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_sf2_priv {int master_mii_dn; int slave_mii_bus; } ;


 int mdiobus_unregister (int ) ;
 int of_node_put (int ) ;

__attribute__((used)) static void bcm_sf2_mdio_unregister(struct bcm_sf2_priv *priv)
{
 mdiobus_unregister(priv->slave_mii_bus);
 of_node_put(priv->master_mii_dn);
}
