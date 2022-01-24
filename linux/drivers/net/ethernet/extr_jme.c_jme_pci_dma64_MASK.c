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
struct pci_dev {scalar_t__ device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PCI_DEVICE_ID_JMICRON_JMC250 ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct pci_dev *pdev)
{
	if (pdev->device == PCI_DEVICE_ID_JMICRON_JMC250 &&
	    !FUNC2(pdev, FUNC0(64)))
		if (!FUNC1(pdev, FUNC0(64)))
			return 1;

	if (pdev->device == PCI_DEVICE_ID_JMICRON_JMC250 &&
	    !FUNC2(pdev, FUNC0(40)))
		if (!FUNC1(pdev, FUNC0(40)))
			return 1;

	if (!FUNC2(pdev, FUNC0(32)))
		if (!FUNC1(pdev, FUNC0(32)))
			return 0;

	return -1;
}