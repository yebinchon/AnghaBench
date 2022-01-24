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
struct pci_dev {int dummy; } ;
struct nicvf {int num_vec; int* irq_allocated; struct nicvf** napi; int /*<<< orphan*/ * affinity_mask; struct pci_dev* pdev; } ;

/* Variables and functions */
 int NICVF_INTR_ID_SQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nicvf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int) ; 

__attribute__((used)) static void FUNC5(struct nicvf *nic)
{
	struct pci_dev *pdev = nic->pdev;
	int irq;

	/* Free registered interrupts */
	for (irq = 0; irq < nic->num_vec; irq++) {
		if (!nic->irq_allocated[irq])
			continue;

		FUNC2(FUNC4(pdev, irq), NULL);
		FUNC0(nic->affinity_mask[irq]);

		if (irq < NICVF_INTR_ID_SQ)
			FUNC1(FUNC4(pdev, irq), nic->napi[irq]);
		else
			FUNC1(FUNC4(pdev, irq), nic);

		nic->irq_allocated[irq] = false;
	}

	/* Disable MSI-X */
	FUNC3(pdev);
	nic->num_vec = 0;
}