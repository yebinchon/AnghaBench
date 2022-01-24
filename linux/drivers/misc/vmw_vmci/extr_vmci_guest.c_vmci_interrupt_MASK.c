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
struct vmci_guest_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  bm_tasklet; int /*<<< orphan*/  datagram_tasklet; scalar_t__ iobase; scalar_t__ exclusive_vectors; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ VMCI_ICR_ADDR ; 
 unsigned int VMCI_ICR_DATAGRAM ; 
 unsigned int VMCI_ICR_NOTIFICATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *_dev)
{
	struct vmci_guest_device *dev = _dev;

	/*
	 * If we are using MSI-X with exclusive vectors then we simply schedule
	 * the datagram tasklet, since we know the interrupt was meant for us.
	 * Otherwise we must read the ICR to determine what to do.
	 */

	if (dev->exclusive_vectors) {
		FUNC2(&dev->datagram_tasklet);
	} else {
		unsigned int icr;

		/* Acknowledge interrupt and determine what needs doing. */
		icr = FUNC1(dev->iobase + VMCI_ICR_ADDR);
		if (icr == 0 || icr == ~0)
			return IRQ_NONE;

		if (icr & VMCI_ICR_DATAGRAM) {
			FUNC2(&dev->datagram_tasklet);
			icr &= ~VMCI_ICR_DATAGRAM;
		}

		if (icr & VMCI_ICR_NOTIFICATION) {
			FUNC2(&dev->bm_tasklet);
			icr &= ~VMCI_ICR_NOTIFICATION;
		}

		if (icr != 0)
			FUNC0(dev->dev,
				 "Ignoring unknown interrupt cause (%d)\n",
				 icr);
	}

	return IRQ_HANDLED;
}