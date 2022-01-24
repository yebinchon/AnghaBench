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
struct tw686x_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  lock; int /*<<< orphan*/ * pci_dev; int /*<<< orphan*/  mmio; int /*<<< orphan*/  dma_delay_timer; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct tw686x_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct tw686x_dev* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct tw686x_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct tw686x_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct pci_dev *pci_dev)
{
	struct tw686x_dev *dev = FUNC3(pci_dev);
	unsigned long flags;

	/* This guarantees the IRQ handler is no longer running,
	 * which means we can kiss good-bye some resources.
	 */
	FUNC1(pci_dev->irq, dev);

	FUNC9(dev);
	FUNC8(dev);
	FUNC0(&dev->dma_delay_timer);

	FUNC4(pci_dev, dev->mmio);
	FUNC5(pci_dev);
	FUNC2(pci_dev);

	/*
	 * Setting pci_dev to NULL allows to detect hardware is no longer
	 * available and will be used by vb2_ops. This is required because
	 * the device sometimes hot-unplugs itself as the result of a PCIe
	 * link down.
	 * The lock is really important here.
	 */
	FUNC6(&dev->lock, flags);
	dev->pci_dev = NULL;
	FUNC7(&dev->lock, flags);

	/*
	 * This calls tw686x_dev_release if it's the last reference.
	 * Otherwise, release is postponed until there are no users left.
	 */
	FUNC10(&dev->v4l2_dev);
}