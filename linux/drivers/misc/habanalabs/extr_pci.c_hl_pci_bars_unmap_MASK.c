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
struct pci_dev {int dummy; } ;
struct hl_device {int /*<<< orphan*/ * pcie_bar; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC2(struct hl_device *hdev)
{
	struct pci_dev *pdev = hdev->pdev;
	int i, bar;

	for (i = 2 ; i >= 0 ; i--) {
		bar = i * 2; /* 64-bit BARs */
		FUNC0(hdev->pcie_bar[bar]);
	}

	FUNC1(pdev);
}