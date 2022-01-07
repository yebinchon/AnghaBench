
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int mode; int address; int features; TYPE_6__* def; } ;
struct emac_instance {TYPE_5__* phy_dev; TYPE_4__ phy; TYPE_1__* ofdev; int phy_mode; int ndev; } ;
struct device_node {int dummy; } ;
struct TYPE_12__ {int * ops; int name; int phy_id_mask; int phy_id; } ;
struct TYPE_9__ {int addr; } ;
struct TYPE_11__ {int interface; TYPE_3__ mdio; int supported; TYPE_2__* drv; } ;
struct TYPE_8__ {int name; int phy_id_mask; int phy_id; } ;
struct TYPE_7__ {int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 TYPE_6__* devm_kzalloc (int *,int,int ) ;
 int emac_adjust_link ;
 int emac_dt_mdio_phy_ops ;
 int ethtool_convert_link_mode_to_legacy_u32 (int *,int ) ;
 TYPE_5__* of_phy_connect (int ,struct device_node*,int *,int ,int ) ;

__attribute__((used)) static int emac_dt_phy_connect(struct emac_instance *dev,
          struct device_node *phy_handle)
{
 dev->phy.def = devm_kzalloc(&dev->ofdev->dev, sizeof(*dev->phy.def),
        GFP_KERNEL);
 if (!dev->phy.def)
  return -ENOMEM;

 dev->phy_dev = of_phy_connect(dev->ndev, phy_handle, &emac_adjust_link,
          0, dev->phy_mode);
 if (!dev->phy_dev) {
  dev_err(&dev->ofdev->dev, "failed to connect to PHY.\n");
  return -ENODEV;
 }

 dev->phy.def->phy_id = dev->phy_dev->drv->phy_id;
 dev->phy.def->phy_id_mask = dev->phy_dev->drv->phy_id_mask;
 dev->phy.def->name = dev->phy_dev->drv->name;
 dev->phy.def->ops = &emac_dt_mdio_phy_ops;
 ethtool_convert_link_mode_to_legacy_u32(&dev->phy.features,
      dev->phy_dev->supported);
 dev->phy.address = dev->phy_dev->mdio.addr;
 dev->phy.mode = dev->phy_dev->interface;
 return 0;
}
