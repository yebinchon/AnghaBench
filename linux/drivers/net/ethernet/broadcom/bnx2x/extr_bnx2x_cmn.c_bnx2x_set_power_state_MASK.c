#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct bnx2x {TYPE_1__* pdev; int /*<<< orphan*/  wol; } ;
typedef  int pci_power_t ;
struct TYPE_3__ {int /*<<< orphan*/  dev; scalar_t__ pm_cap; int /*<<< orphan*/  enable_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int EINVAL ; 
#define  PCI_D0 129 
#define  PCI_D3hot 128 
 scalar_t__ PCI_PM_CTRL ; 
 int PCI_PM_CTRL_PME_ENABLE ; 
 int PCI_PM_CTRL_PME_STATUS ; 
 int PCI_PM_CTRL_STATE_MASK ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__,int) ; 

int FUNC7(struct bnx2x *bp, pci_power_t state)
{
	u16 pmcsr;

	/* If there is no power capability, silently succeed */
	if (!bp->pdev->pm_cap) {
		FUNC0("No power capability. Breaking.\n");
		return 0;
	}

	FUNC5(bp->pdev, bp->pdev->pm_cap + PCI_PM_CTRL, &pmcsr);

	switch (state) {
	case PCI_D0:
		FUNC6(bp->pdev, bp->pdev->pm_cap + PCI_PM_CTRL,
				      ((pmcsr & ~PCI_PM_CTRL_STATE_MASK) |
				       PCI_PM_CTRL_PME_STATUS));

		if (pmcsr & PCI_PM_CTRL_STATE_MASK)
			/* delay required during transition out of D3hot */
			FUNC4(20);
		break;

	case PCI_D3hot:
		/* If there are other clients above don't
		   shut down the power */
		if (FUNC2(&bp->pdev->enable_cnt) != 1)
			return 0;
		/* Don't shut down the power for emulation and FPGA */
		if (FUNC1(bp))
			return 0;

		pmcsr &= ~PCI_PM_CTRL_STATE_MASK;
		pmcsr |= 3;

		if (bp->wol)
			pmcsr |= PCI_PM_CTRL_PME_ENABLE;

		FUNC6(bp->pdev, bp->pdev->pm_cap + PCI_PM_CTRL,
				      pmcsr);

		/* No more memory access after this point until
		* device is brought back to D0.
		*/
		break;

	default:
		FUNC3(&bp->pdev->dev, "Can't support state = %d\n", state);
		return -EINVAL;
	}
	return 0;
}