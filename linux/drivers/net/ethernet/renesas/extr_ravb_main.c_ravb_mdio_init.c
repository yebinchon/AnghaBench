
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * ops; } ;
struct ravb_private {TYPE_1__* mii_bus; TYPE_4__ mdiobb; struct platform_device* pdev; } ;
struct device {int of_node; } ;
struct platform_device {char* name; int id; struct device dev; } ;
struct TYPE_5__ {char* name; int id; struct device* parent; } ;


 int ENOMEM ;
 int MII_BUS_ID_SIZE ;
 TYPE_1__* alloc_mdio_bitbang (TYPE_4__*) ;
 int bb_ops ;
 int free_mdio_bitbang (TYPE_1__*) ;
 int of_mdiobus_register (TYPE_1__*,int ) ;
 int snprintf (int ,int ,char*,char*,int) ;

__attribute__((used)) static int ravb_mdio_init(struct ravb_private *priv)
{
 struct platform_device *pdev = priv->pdev;
 struct device *dev = &pdev->dev;
 int error;


 priv->mdiobb.ops = &bb_ops;


 priv->mii_bus = alloc_mdio_bitbang(&priv->mdiobb);
 if (!priv->mii_bus)
  return -ENOMEM;


 priv->mii_bus->name = "ravb_mii";
 priv->mii_bus->parent = dev;
 snprintf(priv->mii_bus->id, MII_BUS_ID_SIZE, "%s-%x",
   pdev->name, pdev->id);


 error = of_mdiobus_register(priv->mii_bus, dev->of_node);
 if (error)
  goto out_free_bus;

 return 0;

out_free_bus:
 free_mdio_bitbang(priv->mii_bus);
 return error;
}
