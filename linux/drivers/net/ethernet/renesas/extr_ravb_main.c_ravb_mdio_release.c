
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ravb_private {int mii_bus; } ;


 int free_mdio_bitbang (int ) ;
 int mdiobus_unregister (int ) ;

__attribute__((used)) static int ravb_mdio_release(struct ravb_private *priv)
{

 mdiobus_unregister(priv->mii_bus);


 free_mdio_bitbang(priv->mii_bus);

 return 0;
}
