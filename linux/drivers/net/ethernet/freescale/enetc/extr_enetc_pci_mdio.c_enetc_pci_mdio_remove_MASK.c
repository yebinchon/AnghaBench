#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct mii_bus {struct enetc_mdio_priv* priv; } ;
struct enetc_mdio_priv {TYPE_1__* hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct mii_bus* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct mii_bus *bus = FUNC3(pdev);
	struct enetc_mdio_priv *mdio_priv;

	FUNC1(bus);
	mdio_priv = bus->priv;
	FUNC0(mdio_priv->hw->port);
	FUNC4(pdev);
	FUNC2(pdev);
}