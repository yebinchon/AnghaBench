#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  subsystem_vendor; } ;
struct cx88_core {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* cx88_boards ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(struct cx88_core *core, struct pci_dev *pci)
{
	int i;

	if (!pci->subsystem_vendor && !pci->subsystem_device) {
		FUNC1("Your board has no valid PCI Subsystem ID and thus can't\n");
		FUNC1("be autodetected.  Please pass card=<n> insmod option to\n");
		FUNC1("workaround that.  Redirect complaints to the vendor of\n");
		FUNC1("the TV card\n");
	} else {
		FUNC1("Your board isn't known (yet) to the driver.  You can\n");
		FUNC1("try to pick one of the existing card configs via\n");
		FUNC1("card=<n> insmod option.  Updating to the latest\n");
		FUNC1("version might help as well.\n");
	}
	FUNC1("Here is a list of valid choices for the card=<n> insmod option:\n");
	for (i = 0; i < FUNC0(cx88_boards); i++)
		FUNC1("    card=%d -> %s\n", i, cx88_boards[i].name);
}