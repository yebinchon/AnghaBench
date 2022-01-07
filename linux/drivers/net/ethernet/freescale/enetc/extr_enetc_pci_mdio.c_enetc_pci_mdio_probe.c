
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct device {int of_node; } ;
struct pci_dev {struct device dev; } ;
struct mii_bus {int id; struct enetc_mdio_priv* priv; struct device* parent; int write; int read; int name; } ;
struct enetc_mdio_priv {struct enetc_hw* hw; } ;
struct enetc_hw {int port; } ;


 int ENETC_MDIO_BUS_NAME ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int KBUILD_MODNAME ;
 int MII_BUS_ID_SIZE ;
 int dev_err (struct device*,char*) ;
 char* dev_name (struct device*) ;
 struct enetc_hw* devm_kzalloc (struct device*,int,int ) ;
 struct mii_bus* devm_mdiobus_alloc_size (struct device*,int) ;
 int enetc_mdio_read ;
 int enetc_mdio_write ;
 int iounmap (int ) ;
 int of_mdiobus_register (struct mii_bus*,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device_mem (struct pci_dev*) ;
 int pci_iomap (struct pci_dev*,int ,int ) ;
 int pci_release_mem_regions (struct pci_dev*) ;
 int pci_request_region (struct pci_dev*,int ,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct mii_bus*) ;
 int pcie_flr (struct pci_dev*) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static int enetc_pci_mdio_probe(struct pci_dev *pdev,
    const struct pci_device_id *ent)
{
 struct enetc_mdio_priv *mdio_priv;
 struct device *dev = &pdev->dev;
 struct enetc_hw *hw;
 struct mii_bus *bus;
 int err;

 hw = devm_kzalloc(dev, sizeof(*hw), GFP_KERNEL);
 if (!hw)
  return -ENOMEM;

 bus = devm_mdiobus_alloc_size(dev, sizeof(*mdio_priv));
 if (!bus)
  return -ENOMEM;

 bus->name = ENETC_MDIO_BUS_NAME;
 bus->read = enetc_mdio_read;
 bus->write = enetc_mdio_write;
 bus->parent = dev;
 mdio_priv = bus->priv;
 mdio_priv->hw = hw;
 snprintf(bus->id, MII_BUS_ID_SIZE, "%s", dev_name(dev));

 pcie_flr(pdev);
 err = pci_enable_device_mem(pdev);
 if (err) {
  dev_err(dev, "device enable failed\n");
  return err;
 }

 err = pci_request_region(pdev, 0, KBUILD_MODNAME);
 if (err) {
  dev_err(dev, "pci_request_region failed\n");
  goto err_pci_mem_reg;
 }

 hw->port = pci_iomap(pdev, 0, 0);
 if (!hw->port) {
  err = -ENXIO;
  dev_err(dev, "iomap failed\n");
  goto err_ioremap;
 }

 err = of_mdiobus_register(bus, dev->of_node);
 if (err)
  goto err_mdiobus_reg;

 pci_set_drvdata(pdev, bus);

 return 0;

err_mdiobus_reg:
 iounmap(mdio_priv->hw->port);
err_ioremap:
 pci_release_mem_regions(pdev);
err_pci_mem_reg:
 pci_disable_device(pdev);

 return err;
}
