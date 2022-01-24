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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct phantom_device {scalar_t__ caddr; scalar_t__ iaddr; scalar_t__ oaddr; TYPE_1__ cdev; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ PHN_IRQCTL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct phantom_device*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct phantom_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 struct phantom_device* FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  phantom_class ; 
 scalar_t__* phantom_devices ; 
 int /*<<< orphan*/  phantom_major ; 

__attribute__((used)) static void FUNC12(struct pci_dev *pdev)
{
	struct phantom_device *pht = FUNC9(pdev);
	unsigned int minor = FUNC0(pht->cdev.dev);

	FUNC3(phantom_class, FUNC1(phantom_major, minor));

	FUNC2(&pht->cdev);

	FUNC6(0, pht->caddr + PHN_IRQCTL);
	FUNC5(pht->caddr + PHN_IRQCTL); /* PCI posting */
	FUNC4(pdev->irq, pht);

	FUNC10(pdev, pht->oaddr);
	FUNC10(pdev, pht->iaddr);
	FUNC10(pdev, pht->caddr);

	FUNC7(pht);

	FUNC11(pdev);

	phantom_devices[minor] = 0;

	FUNC8(pdev);
}