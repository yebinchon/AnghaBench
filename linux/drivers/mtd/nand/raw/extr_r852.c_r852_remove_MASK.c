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
struct r852_device {struct r852_device* chip; int /*<<< orphan*/  phys_bounce_buffer; int /*<<< orphan*/  bounce_buffer; int /*<<< orphan*/  mmio; struct r852_device* tmp_buffer; int /*<<< orphan*/  irq; int /*<<< orphan*/  card_workqueue; int /*<<< orphan*/  card_detect_work; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  R852_DMA_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct r852_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct r852_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct r852_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct r852_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct r852_device*) ; 

__attribute__((used)) static void FUNC11(struct pci_dev *pci_dev)
{
	struct r852_device *dev = FUNC6(pci_dev);

	/* Stop detect workqueue -
		we are going to unregister the device anyway*/
	FUNC0(&dev->card_detect_work);
	FUNC1(dev->card_workqueue);

	/* Unregister the device, this might make more IO */
	FUNC10(dev);

	/* Stop interrupts */
	FUNC9(dev);
	FUNC3(dev->irq, dev);

	/* Cleanup */
	FUNC4(dev->tmp_buffer);
	FUNC7(pci_dev, dev->mmio);
	FUNC2(&pci_dev->dev, R852_DMA_LEN, dev->bounce_buffer,
			  dev->phys_bounce_buffer);

	FUNC4(dev->chip);
	FUNC4(dev);

	/* Shutdown the PCI device */
	FUNC8(pci_dev);
	FUNC5(pci_dev);
}