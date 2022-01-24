#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct pci_dev {struct device dev; } ;
struct mii_bus {int /*<<< orphan*/  id; struct enetc_mdio_priv* priv; struct device* parent; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  name; } ;
struct enetc_mdio_priv {struct enetc_hw* hw; } ;
struct enetc_hw {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENETC_MDIO_BUS_NAME ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 char* FUNC1 (struct device*) ; 
 struct enetc_hw* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct mii_bus* FUNC3 (struct device*,int) ; 
 int /*<<< orphan*/  enetc_mdio_read ; 
 int /*<<< orphan*/  enetc_mdio_write ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mii_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC14(struct pci_dev *pdev,
				const struct pci_device_id *ent)
{
	struct enetc_mdio_priv *mdio_priv;
	struct device *dev = &pdev->dev;
	struct enetc_hw *hw;
	struct mii_bus *bus;
	int err;

	hw = FUNC2(dev, sizeof(*hw), GFP_KERNEL);
	if (!hw)
		return -ENOMEM;

	bus = FUNC3(dev, sizeof(*mdio_priv));
	if (!bus)
		return -ENOMEM;

	bus->name = ENETC_MDIO_BUS_NAME;
	bus->read = enetc_mdio_read;
	bus->write = enetc_mdio_write;
	bus->parent = dev;
	mdio_priv = bus->priv;
	mdio_priv->hw = hw;
	FUNC13(bus->id, MII_BUS_ID_SIZE, "%s", FUNC1(dev));

	FUNC12(pdev);
	err = FUNC7(pdev);
	if (err) {
		FUNC0(dev, "device enable failed\n");
		return err;
	}

	err = FUNC10(pdev, 0, KBUILD_MODNAME);
	if (err) {
		FUNC0(dev, "pci_request_region failed\n");
		goto err_pci_mem_reg;
	}

	hw->port = FUNC8(pdev, 0, 0);
	if (!hw->port) {
		err = -ENXIO;
		FUNC0(dev, "iomap failed\n");
		goto err_ioremap;
	}

	err = FUNC5(bus, dev->of_node);
	if (err)
		goto err_mdiobus_reg;

	FUNC11(pdev, bus);

	return 0;

err_mdiobus_reg:
	FUNC4(mdio_priv->hw->port);
err_ioremap:
	FUNC9(pdev);
err_pci_mem_reg:
	FUNC6(pdev);

	return err;
}