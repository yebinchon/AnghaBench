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
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct genwqe_dev {int /*<<< orphan*/  queue; int /*<<< orphan*/ * card_thread; struct pci_dev* pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct genwqe_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct genwqe_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct genwqe_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct genwqe_dev *cd)
{
	struct pci_dev *pci_dev = cd->pci_dev;

	if (!FUNC0(&cd->queue))
		return 1;

	FUNC2(pci_dev->irq, cd);
	FUNC3(cd);

	if (cd->card_thread != NULL) {
		FUNC4(cd->card_thread);
		cd->card_thread = NULL;
	}

	FUNC1(cd, &cd->queue);
	return 0;
}