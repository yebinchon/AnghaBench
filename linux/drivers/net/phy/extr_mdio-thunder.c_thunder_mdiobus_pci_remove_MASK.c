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
struct thunder_mdiobus_nexus {struct cavium_mdiobus** buses; } ;
struct pci_dev {int dummy; } ;
struct cavium_mdiobus {scalar_t__ register_base; int /*<<< orphan*/  mii_bus; } ;

/* Variables and functions */
 int FUNC0 (struct cavium_mdiobus**) ; 
 scalar_t__ SMI_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct thunder_mdiobus_nexus* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	int i;
	struct thunder_mdiobus_nexus *nexus = FUNC4(pdev);

	for (i = 0; i < FUNC0(nexus->buses); i++) {
		struct cavium_mdiobus *bus = nexus->buses[i];

		if (!bus)
			continue;

		FUNC2(bus->mii_bus);
		FUNC1(bus->mii_bus);
		FUNC3(0, bus->register_base + SMI_EN);
	}
	FUNC5(pdev, NULL);
}