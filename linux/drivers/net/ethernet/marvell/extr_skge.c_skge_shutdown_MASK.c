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
struct skge_port {scalar_t__ wol; } ;
struct skge_hw {int ports; struct net_device** dev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct skge_port* FUNC1 (struct net_device*) ; 
 struct skge_hw* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct skge_port*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct skge_hw *hw  = FUNC2(pdev);
	int i;

	if (!hw)
		return;

	for (i = 0; i < hw->ports; i++) {
		struct net_device *dev = hw->dev[i];
		struct skge_port *skge = FUNC1(dev);

		if (skge->wol)
			FUNC5(skge);
	}

	FUNC4(pdev, FUNC0(&pdev->dev));
	FUNC3(pdev, PCI_D3hot);
}