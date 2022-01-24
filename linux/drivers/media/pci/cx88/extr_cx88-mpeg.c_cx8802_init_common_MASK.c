#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct cx88_core {int /*<<< orphan*/  pci_irqmask; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  active; } ;
struct cx8802_dev {TYPE_2__* pci; struct cx88_core* core; TYPE_1__ mpegq; int /*<<< orphan*/  slock; int /*<<< orphan*/  pci_lat; int /*<<< orphan*/  pci_rev; } ;
struct TYPE_10__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  MO_PCI_INTMSK ; 
 int /*<<< orphan*/  PCI_LATENCY_TIMER ; 
 int /*<<< orphan*/  cx8802_irq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct cx8802_dev*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cx8802_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct cx8802_dev *dev)
{
	struct cx88_core *core = dev->core;
	int err;

	/* pci init */
	if (FUNC3(dev->pci))
		return -EIO;
	FUNC9(dev->pci);
	err = FUNC7(dev->pci, FUNC0(32));
	if (err) {
		FUNC10("Oops: no 32bit PCI DMA ???\n");
		return -EIO;
	}

	dev->pci_rev = dev->pci->revision;
	FUNC5(dev->pci, PCI_LATENCY_TIMER,  &dev->pci_lat);
	FUNC11("found at %s, rev: %d, irq: %d, latency: %d, mmio: 0x%llx\n",
		FUNC4(dev->pci), dev->pci_rev, dev->pci->irq,
		dev->pci_lat,
		(unsigned long long)FUNC6(dev->pci, 0));

	/* initialize driver struct */
	FUNC13(&dev->slock);

	/* init dma queue */
	FUNC1(&dev->mpegq.active);

	/* get irq */
	err = FUNC12(dev->pci->irq, cx8802_irq,
			  IRQF_SHARED, dev->core->name, dev);
	if (err < 0) {
		FUNC10("can't get IRQ %d\n", dev->pci->irq);
		return err;
	}
	FUNC2(MO_PCI_INTMSK, core->pci_irqmask);

	/* everything worked */
	FUNC8(dev->pci, dev);
	return 0;
}