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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct msix_entry {unsigned int entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,int) ; 
 int FUNC2 (struct pci_dev*,struct msix_entry*,unsigned int,unsigned int) ; 

unsigned int
FUNC3(struct pci_dev *pdev, struct msix_entry *irq_entries,
		   unsigned int min_irqs, unsigned int wanted_irqs)
{
	unsigned int i;
	int got_irqs;

	for (i = 0; i < wanted_irqs; i++)
		irq_entries[i].entry = i;

	got_irqs = FUNC2(pdev, irq_entries,
					 min_irqs, wanted_irqs);
	if (got_irqs < 0) {
		FUNC0(&pdev->dev, "Failed to enable %d-%d MSI-X (err=%d)\n",
			min_irqs, wanted_irqs, got_irqs);
		return 0;
	}

	if (got_irqs < wanted_irqs)
		FUNC1(&pdev->dev, "Unable to allocate %d IRQs got only %d\n",
			 wanted_irqs, got_irqs);

	return got_irqs;
}