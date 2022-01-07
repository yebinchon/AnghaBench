
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sh_eth_private {TYPE_1__* mii_bus; scalar_t__* reg_offset; scalar_t__ addr; struct platform_device* pdev; } ;
struct sh_eth_plat_data {scalar_t__ phy_irq; size_t phy; int set_mdio_gate; } ;
struct device {int of_node; } ;
struct platform_device {char* name; int id; struct device dev; } ;
struct TYPE_6__ {int * ops; } ;
struct bb_info {TYPE_4__ ctrl; int set_gate; scalar_t__ addr; } ;
struct TYPE_5__ {char* name; scalar_t__* irq; int id; struct device* parent; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MII_BUS_ID_SIZE ;
 size_t PIR ;
 TYPE_1__* alloc_mdio_bitbang (TYPE_4__*) ;
 int bb_ops ;
 struct bb_info* devm_kzalloc (struct device*,int,int ) ;
 int free_mdio_bitbang (TYPE_1__*) ;
 int of_mdiobus_register (TYPE_1__*,int ) ;
 int snprintf (int ,int ,char*,char*,int) ;

__attribute__((used)) static int sh_mdio_init(struct sh_eth_private *mdp,
   struct sh_eth_plat_data *pd)
{
 int ret;
 struct bb_info *bitbang;
 struct platform_device *pdev = mdp->pdev;
 struct device *dev = &mdp->pdev->dev;


 bitbang = devm_kzalloc(dev, sizeof(struct bb_info), GFP_KERNEL);
 if (!bitbang)
  return -ENOMEM;


 bitbang->addr = mdp->addr + mdp->reg_offset[PIR];
 bitbang->set_gate = pd->set_mdio_gate;
 bitbang->ctrl.ops = &bb_ops;


 mdp->mii_bus = alloc_mdio_bitbang(&bitbang->ctrl);
 if (!mdp->mii_bus)
  return -ENOMEM;


 mdp->mii_bus->name = "sh_mii";
 mdp->mii_bus->parent = dev;
 snprintf(mdp->mii_bus->id, MII_BUS_ID_SIZE, "%s-%x",
   pdev->name, pdev->id);


 if (pd->phy_irq > 0)
  mdp->mii_bus->irq[pd->phy] = pd->phy_irq;

 ret = of_mdiobus_register(mdp->mii_bus, dev->of_node);
 if (ret)
  goto out_free_bus;

 return 0;

out_free_bus:
 free_mdio_bitbang(mdp->mii_bus);
 return ret;
}
