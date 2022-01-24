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
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct atl1c_adapter {int have_msi; struct pci_dev* pdev; struct net_device* netdev; } ;

/* Variables and functions */
 int IRQF_SHARED ; 
 int /*<<< orphan*/  atl1c_intr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct atl1c_adapter *adapter)
{
	struct pci_dev    *pdev   = adapter->pdev;
	struct net_device *netdev = adapter->netdev;
	int flags = 0;
	int err = 0;

	adapter->have_msi = true;
	err = FUNC4(adapter->pdev);
	if (err) {
		if (FUNC2(adapter))
			FUNC1(&pdev->dev,
				"Unable to allocate MSI interrupt Error: %d\n",
				err);
		adapter->have_msi = false;
	}

	if (!adapter->have_msi)
		flags |= IRQF_SHARED;
	err = FUNC5(adapter->pdev->irq, atl1c_intr, flags,
			netdev->name, netdev);
	if (err) {
		if (FUNC2(adapter))
			FUNC1(&pdev->dev,
				"Unable to allocate interrupt Error: %d\n",
				err);
		if (adapter->have_msi)
			FUNC3(adapter->pdev);
		return err;
	}
	if (FUNC2(adapter))
		FUNC0(&pdev->dev, "atl1c_request_irq OK\n");
	return err;
}