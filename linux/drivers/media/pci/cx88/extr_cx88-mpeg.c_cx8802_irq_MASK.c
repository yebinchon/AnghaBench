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
typedef  int u32 ;
struct cx88_core {int pci_irqmask; } ;
struct cx8802_dev {struct cx88_core* core; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_IRQ_LOOP ; 
 int /*<<< orphan*/  MO_PCI_INTMSK ; 
 int /*<<< orphan*/  MO_PCI_INTSTAT ; 
 int PCI_INT_TSINT ; 
 int /*<<< orphan*/  FUNC1 (struct cx8802_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx88_core*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct cx8802_dev *dev = dev_id;
	struct cx88_core *core = dev->core;
	u32 status;
	int loop, handled = 0;

	for (loop = 0; loop < MAX_IRQ_LOOP; loop++) {
		status = FUNC3(MO_PCI_INTSTAT) &
			(core->pci_irqmask | PCI_INT_TSINT);
		if (status == 0)
			goto out;
		FUNC5(1, "cx8802_irq\n");
		FUNC5(1, "    loop: %d/%d\n", loop, MAX_IRQ_LOOP);
		FUNC5(1, "    status: %d\n", status);
		handled = 1;
		FUNC4(MO_PCI_INTSTAT, status);

		if (status & core->pci_irqmask)
			FUNC2(core, status);
		if (status & PCI_INT_TSINT)
			FUNC1(dev);
	}
	if (loop == MAX_IRQ_LOOP) {
		FUNC5(0, "clearing mask\n");
		FUNC6("irq loop -- clearing mask\n");
		FUNC4(MO_PCI_INTMSK, 0);
	}

 out:
	return FUNC0(handled);
}