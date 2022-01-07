
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct mii_bus {char* name; int phy_mask; struct device* parent; struct ixgbe_adapter* priv; int id; int * write; int * read; } ;
struct TYPE_5__ {int mode_support; } ;
struct TYPE_6__ {TYPE_2__ mdio; } ;
struct ixgbe_hw {int device_id; TYPE_3__ phy; struct ixgbe_adapter* back; } ;
struct ixgbe_adapter {struct mii_bus* mii_bus; TYPE_1__* netdev; struct pci_dev* pdev; } ;
struct device {int dummy; } ;
typedef int s32 ;
struct TYPE_4__ {struct device dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GENMASK (int,int ) ;
 int MDIO_SUPPORTS_C22 ;
 int MDIO_SUPPORTS_C45 ;
 int MII_BUS_ID_SIZE ;
 struct mii_bus* devm_mdiobus_alloc (struct device*) ;
 int devm_mdiobus_free (struct device*,struct mii_bus*) ;
 char* ixgbe_driver_name ;
 int ixgbe_mii_bus_read ;
 int ixgbe_mii_bus_write ;
 int ixgbe_x550em_a_has_mii (struct ixgbe_hw*) ;
 int ixgbe_x550em_a_mii_bus_read ;
 int ixgbe_x550em_a_mii_bus_write ;
 int mdiobus_register (struct mii_bus*) ;
 char* pci_name (struct pci_dev*) ;
 int snprintf (int ,int ,char*,char*,char*) ;

s32 ixgbe_mii_bus_init(struct ixgbe_hw *hw)
{
 struct ixgbe_adapter *adapter = hw->back;
 struct pci_dev *pdev = adapter->pdev;
 struct device *dev = &adapter->netdev->dev;
 struct mii_bus *bus;
 int err = -ENODEV;

 bus = devm_mdiobus_alloc(dev);
 if (!bus)
  return -ENOMEM;

 switch (hw->device_id) {

 case 133:
 case 132:
 case 130:
 case 129:
 case 128:
 case 136:
 case 131:
 case 135:
 case 134:
  if (!ixgbe_x550em_a_has_mii(hw))
   goto ixgbe_no_mii_bus;
  bus->read = &ixgbe_x550em_a_mii_bus_read;
  bus->write = &ixgbe_x550em_a_mii_bus_write;
  break;
 default:
  bus->read = &ixgbe_mii_bus_read;
  bus->write = &ixgbe_mii_bus_write;
  break;
 }


 snprintf(bus->id, MII_BUS_ID_SIZE, "%s-mdio-%s", ixgbe_driver_name,
   pci_name(pdev));

 bus->name = "ixgbe-mdio";
 bus->priv = adapter;
 bus->parent = dev;
 bus->phy_mask = GENMASK(31, 0);





 hw->phy.mdio.mode_support = MDIO_SUPPORTS_C45 | MDIO_SUPPORTS_C22;

 err = mdiobus_register(bus);
 if (!err) {
  adapter->mii_bus = bus;
  return 0;
 }

ixgbe_no_mii_bus:
 devm_mdiobus_free(dev, bus);
 return err;
}
