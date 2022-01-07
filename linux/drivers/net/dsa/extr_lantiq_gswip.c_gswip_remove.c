
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct gswip_priv {int num_gphy_fw; int * gphy_fw; TYPE_3__* ds; } ;
struct TYPE_6__ {TYPE_2__* slave_mii_bus; } ;
struct TYPE_4__ {int of_node; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int GSWIP_MDIO_GLOB ;
 int GSWIP_MDIO_GLOB_ENABLE ;
 int dsa_unregister_switch (TYPE_3__*) ;
 int gswip_gphy_fw_remove (struct gswip_priv*,int *) ;
 int gswip_mdio_mask (struct gswip_priv*,int ,int ,int ) ;
 int mdiobus_unregister (TYPE_2__*) ;
 int of_node_put (int ) ;
 struct gswip_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int gswip_remove(struct platform_device *pdev)
{
 struct gswip_priv *priv = platform_get_drvdata(pdev);
 int i;


 gswip_mdio_mask(priv, GSWIP_MDIO_GLOB_ENABLE, 0, GSWIP_MDIO_GLOB);

 dsa_unregister_switch(priv->ds);

 if (priv->ds->slave_mii_bus) {
  mdiobus_unregister(priv->ds->slave_mii_bus);
  of_node_put(priv->ds->slave_mii_bus->dev.of_node);
 }

 for (i = 0; i < priv->num_gphy_fw; i++)
  gswip_gphy_fw_remove(priv, &priv->gphy_fw[i]);

 return 0;
}
