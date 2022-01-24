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
struct sky2_hw {int ports; struct net_device** dev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 struct sky2_hw* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct pci_dev *pdev)
{
	struct sky2_hw *hw = FUNC4(pdev);
	int port;

	for (port = 0; port < hw->ports; port++) {
		struct net_device *ndev = hw->dev[port];

		FUNC7();
		if (FUNC3(ndev)) {
			FUNC0(ndev);
			FUNC2(ndev);
		}
		FUNC8();
	}
	FUNC9(&pdev->dev);
	FUNC6(pdev, FUNC1(&pdev->dev));
	FUNC5(pdev, PCI_D3hot);
}