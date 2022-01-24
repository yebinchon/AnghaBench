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
struct rtl8169_private {int /*<<< orphan*/  phydev; struct pci_dev* pci_dev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct mii_bus {char* name; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  id; int /*<<< orphan*/ * irq; int /*<<< orphan*/ * parent; struct rtl8169_private* priv; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  PHY_IGNORE_INTERRUPT ; 
 struct mii_bus* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_bus*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_bus*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  r8169_mdio_read_reg ; 
 int /*<<< orphan*/  r8169_mdio_write_reg ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC7(struct rtl8169_private *tp)
{
	struct pci_dev *pdev = tp->pci_dev;
	struct mii_bus *new_bus;
	int ret;

	new_bus = FUNC0(&pdev->dev);
	if (!new_bus)
		return -ENOMEM;

	new_bus->name = "r8169";
	new_bus->priv = tp;
	new_bus->parent = &pdev->dev;
	new_bus->irq[0] = PHY_IGNORE_INTERRUPT;
	FUNC6(new_bus->id, MII_BUS_ID_SIZE, "r8169-%x", FUNC4(pdev));

	new_bus->read = r8169_mdio_read_reg;
	new_bus->write = r8169_mdio_write_reg;

	ret = FUNC2(new_bus);
	if (ret)
		return ret;

	tp->phydev = FUNC1(new_bus, 0);
	if (!tp->phydev) {
		FUNC3(new_bus);
		return -ENODEV;
	}

	/* PHY will be woken up in rtl_open() */
	FUNC5(tp->phydev);

	return 0;
}