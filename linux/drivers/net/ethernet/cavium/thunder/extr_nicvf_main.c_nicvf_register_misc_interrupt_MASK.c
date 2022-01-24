#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nicvf {int* irq_allocated; int /*<<< orphan*/ * irq_name; TYPE_1__* pdev; int /*<<< orphan*/  num_vec; int /*<<< orphan*/  netdev; } ;
struct TYPE_4__ {scalar_t__ msix_enabled; } ;

/* Variables and functions */
 int NICVF_INTR_ID_MISC ; 
 int /*<<< orphan*/  NICVF_INTR_MBOX ; 
 int /*<<< orphan*/  PCI_IRQ_MSIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC2 (struct nicvf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nicvf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nicvf_misc_intr_handler ; 
 int /*<<< orphan*/  FUNC4 (struct nicvf*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nicvf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC10(struct nicvf *nic)
{
	int ret = 0;
	int irq = NICVF_INTR_ID_MISC;

	/* Return if mailbox interrupt is already registered */
	if (nic->pdev->msix_enabled)
		return 0;

	/* Enable MSI-X */
	nic->num_vec = FUNC7(nic->pdev);
	ret = FUNC5(nic->pdev, nic->num_vec, nic->num_vec,
				    PCI_IRQ_MSIX);
	if (ret < 0) {
		FUNC0(nic->netdev,
			   "Req for #%d msix vectors failed\n", nic->num_vec);
		return 1;
	}

	FUNC9(nic->irq_name[irq], "%s Mbox", "NICVF");
	/* Register Misc interrupt */
	ret = FUNC8(FUNC6(nic->pdev, irq),
			  nicvf_misc_intr_handler, 0, nic->irq_name[irq], nic);

	if (ret)
		return ret;
	nic->irq_allocated[irq] = true;

	/* Enable mailbox interrupt */
	FUNC3(nic, NICVF_INTR_MBOX, 0);

	/* Check if VF is able to communicate with PF */
	if (!FUNC1(nic)) {
		FUNC2(nic, NICVF_INTR_MBOX, 0);
		FUNC4(nic);
		return 1;
	}

	return 0;
}