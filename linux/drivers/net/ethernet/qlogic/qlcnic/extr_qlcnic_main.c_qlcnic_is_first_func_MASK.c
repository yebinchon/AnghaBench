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
struct pci_dev {int devfn; scalar_t__ current_state; TYPE_1__* bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 scalar_t__ PCI_D3cold ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *pdev)
{
	struct pci_dev *oth_pdev;
	int val = pdev->devfn;

	while (val-- > 0) {
		oth_pdev = FUNC4(FUNC3
			(pdev->bus), pdev->bus->number,
			FUNC0(FUNC1(pdev->devfn), val));
		if (!oth_pdev)
			continue;

		if (oth_pdev->current_state != PCI_D3cold) {
			FUNC2(oth_pdev);
			return 0;
		}
		FUNC2(oth_pdev);
	}
	return 1;
}