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
struct pci_dev {int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  subsystem_vendor; int /*<<< orphan*/  devfn; } ;
struct cx88_core {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(const struct cx88_core *core, struct pci_dev *pci)
{
	if (FUNC4(FUNC2(pci, 0),
			       FUNC1(pci, 0),
			       core->name))
		return 0;
	FUNC3("func %d: Can't get MMIO memory @ 0x%llx, subsystem: %04x:%04x\n",
	       FUNC0(pci->devfn),
	       (unsigned long long)FUNC2(pci, 0),
	       pci->subsystem_vendor, pci->subsystem_device);
	return -EBUSY;
}