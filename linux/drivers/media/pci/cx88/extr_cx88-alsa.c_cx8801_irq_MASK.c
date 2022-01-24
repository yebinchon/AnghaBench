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
struct cx88_audio_dev {struct cx88_core* core; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_IRQ_LOOP ; 
 int /*<<< orphan*/  MO_PCI_INTMSK ; 
 int /*<<< orphan*/  MO_PCI_INTSTAT ; 
 int PCI_INT_AUDINT ; 
 int /*<<< orphan*/  FUNC1 (struct cx88_audio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx88_core*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct cx88_audio_dev *chip = dev_id;
	struct cx88_core *core = chip->core;
	u32 status;
	int loop, handled = 0;

	for (loop = 0; loop < MAX_IRQ_LOOP; loop++) {
		status = FUNC4(MO_PCI_INTSTAT) &
			(core->pci_irqmask | PCI_INT_AUDINT);
		if (status == 0)
			goto out;
		FUNC6(3, "cx8801_irq loop %d/%d, status %x\n",
			loop, MAX_IRQ_LOOP, status);
		handled = 1;
		FUNC5(MO_PCI_INTSTAT, status);

		if (status & core->pci_irqmask)
			FUNC2(core, status);
		if (status & PCI_INT_AUDINT)
			FUNC1(chip);
	}

	if (loop == MAX_IRQ_LOOP) {
		FUNC7("IRQ loop detected, disabling interrupts\n");
		FUNC3(MO_PCI_INTMSK, PCI_INT_AUDINT);
	}

 out:
	return FUNC0(handled);
}