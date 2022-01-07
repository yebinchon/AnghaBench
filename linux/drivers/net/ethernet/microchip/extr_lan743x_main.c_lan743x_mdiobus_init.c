
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int id_rev; } ;
struct lan743x_adapter {TYPE_3__* mdiobus; TYPE_1__ csr; TYPE_2__* pdev; } ;
struct TYPE_7__ {char* name; int phy_mask; int id; int write; int read; void* priv; } ;
struct TYPE_6__ {int dev; } ;


 scalar_t__ BIT (int) ;
 int ENOMEM ;
 int ID_REV_ID_LAN7430_ ;
 int ID_REV_ID_MASK_ ;
 int MII_BUS_ID_SIZE ;
 TYPE_3__* devm_mdiobus_alloc (int *) ;
 int lan743x_mdiobus_read ;
 int lan743x_mdiobus_write ;
 int mdiobus_register (TYPE_3__*) ;
 char* pci_name (TYPE_2__*) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static int lan743x_mdiobus_init(struct lan743x_adapter *adapter)
{
 int ret;

 adapter->mdiobus = devm_mdiobus_alloc(&adapter->pdev->dev);
 if (!(adapter->mdiobus)) {
  ret = -ENOMEM;
  goto return_error;
 }

 adapter->mdiobus->priv = (void *)adapter;
 adapter->mdiobus->read = lan743x_mdiobus_read;
 adapter->mdiobus->write = lan743x_mdiobus_write;
 adapter->mdiobus->name = "lan743x-mdiobus";
 snprintf(adapter->mdiobus->id, MII_BUS_ID_SIZE,
   "pci-%s", pci_name(adapter->pdev));

 if ((adapter->csr.id_rev & ID_REV_ID_MASK_) == ID_REV_ID_LAN7430_)

  adapter->mdiobus->phy_mask = ~(u32)BIT(1);


 ret = mdiobus_register(adapter->mdiobus);
 if (ret < 0)
  goto return_error;
 return 0;

return_error:
 return ret;
}
