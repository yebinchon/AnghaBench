
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mii_bus {char* name; TYPE_1__* parent; int phy_mask; } ;
struct TYPE_4__ {int * ops; } ;
struct bb_info {int dir; TYPE_2__ ctrl; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct mii_bus* alloc_mdio_bitbang (TYPE_2__*) ;
 int bb_ops ;
 int free_mdio_bitbang (struct mii_bus*) ;
 int fs_mii_bitbang_init (struct mii_bus*,int ) ;
 int iounmap (int ) ;
 int kfree (struct bb_info*) ;
 struct bb_info* kzalloc (int,int ) ;
 int of_mdiobus_register (struct mii_bus*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mii_bus*) ;

__attribute__((used)) static int fs_enet_mdio_probe(struct platform_device *ofdev)
{
 struct mii_bus *new_bus;
 struct bb_info *bitbang;
 int ret = -ENOMEM;

 bitbang = kzalloc(sizeof(struct bb_info), GFP_KERNEL);
 if (!bitbang)
  goto out;

 bitbang->ctrl.ops = &bb_ops;

 new_bus = alloc_mdio_bitbang(&bitbang->ctrl);
 if (!new_bus)
  goto out_free_priv;

 new_bus->name = "CPM2 Bitbanged MII",

 ret = fs_mii_bitbang_init(new_bus, ofdev->dev.of_node);
 if (ret)
  goto out_free_bus;

 new_bus->phy_mask = ~0;

 new_bus->parent = &ofdev->dev;
 platform_set_drvdata(ofdev, new_bus);

 ret = of_mdiobus_register(new_bus, ofdev->dev.of_node);
 if (ret)
  goto out_unmap_regs;

 return 0;

out_unmap_regs:
 iounmap(bitbang->dir);
out_free_bus:
 free_mdio_bitbang(new_bus);
out_free_priv:
 kfree(bitbang);
out:
 return ret;
}
