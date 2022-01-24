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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct cx25821_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  name; scalar_t__ base_io_addr; int /*<<< orphan*/  pci_lat; int /*<<< orphan*/  pci_rev; struct pci_dev* pci; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  PCI_CLASS_REVISION ; 
 int /*<<< orphan*/  PCI_LATENCY_TIMER ; 
 int FUNC0 (struct cx25821_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx25821_dev*) ; 
 int /*<<< orphan*/  cx25821_irq ; 
 int /*<<< orphan*/  FUNC2 (struct cx25821_dev*) ; 
 struct cx25821_dev* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 scalar_t__ FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cx25821_dev*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct pci_dev *pci_dev,
			   const struct pci_device_id *pci_id)
{
	struct cx25821_dev *dev;
	int err = 0;

	dev = FUNC3(sizeof(*dev), GFP_KERNEL);
	if (NULL == dev)
		return -ENOMEM;

	err = FUNC13(&pci_dev->dev, &dev->v4l2_dev);
	if (err < 0)
		goto fail_free;

	/* pci init */
	dev->pci = pci_dev;
	if (FUNC5(pci_dev)) {
		err = -EIO;

		FUNC11("pci enable failed!\n");

		goto fail_unregister_device;
	}

	err = FUNC0(dev);
	if (err)
		goto fail_unregister_pci;

	/* print pci info */
	FUNC7(pci_dev, PCI_CLASS_REVISION, &dev->pci_rev);
	FUNC7(pci_dev, PCI_LATENCY_TIMER, &dev->pci_lat);
	FUNC11("%s/0: found at %s, rev: %d, irq: %d, latency: %d, mmio: 0x%llx\n",
		dev->name, FUNC6(pci_dev), dev->pci_rev, pci_dev->irq,
		dev->pci_lat, (unsigned long long)dev->base_io_addr);

	FUNC9(pci_dev);
	err = FUNC8(pci_dev, 0xffffffff);
	if (err) {
		FUNC10("%s/0: Oops: no 32bit PCI DMA ???\n", dev->name);
		err = -EIO;
		goto fail_irq;
	}

	err = FUNC12(pci_dev->irq, cx25821_irq,
			IRQF_SHARED, dev->name, dev);

	if (err < 0) {
		FUNC10("%s: can't get IRQ %d\n", dev->name, pci_dev->irq);
		goto fail_irq;
	}

	return 0;

fail_irq:
	FUNC11("cx25821_initdev() can't get IRQ !\n");
	FUNC1(dev);

fail_unregister_pci:
	FUNC4(pci_dev);
fail_unregister_device:
	FUNC14(&dev->v4l2_dev);

fail_free:
	FUNC2(dev);
	return err;
}