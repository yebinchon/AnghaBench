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
typedef  int /*<<< orphan*/  uint64_t ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  revision_id; } ;
struct netxen_adapter {int pci_using_dac; TYPE_1__ ahw; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct netxen_adapter *adapter)
{
	struct pci_dev *pdev = adapter->pdev;
	uint64_t mask, cmask;

	adapter->pci_using_dac = 0;

	mask = FUNC0(32);
	cmask = FUNC0(32);

	if (FUNC1(adapter->ahw.revision_id)) {
#ifndef CONFIG_IA64
		mask = FUNC0(35);
#endif
	} else {
		mask = FUNC0(39);
		cmask = mask;
	}

	if (FUNC3(pdev, mask) == 0 &&
		FUNC2(pdev, cmask) == 0) {
		adapter->pci_using_dac = 1;
		return 0;
	}

	return -EIO;
}