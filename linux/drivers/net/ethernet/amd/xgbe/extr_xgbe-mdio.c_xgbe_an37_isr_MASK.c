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
struct xgbe_prv_data {unsigned int an_int; unsigned int an_status; TYPE_1__* vdata; int /*<<< orphan*/  an_irq_work; int /*<<< orphan*/  an_workqueue; } ;
struct TYPE_2__ {scalar_t__ irq_reissue_support; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_MMD_VEND2 ; 
 int /*<<< orphan*/  MDIO_VEND2_AN_STAT ; 
 unsigned int XGBE_AN_CL37_INT_MASK ; 
 unsigned int FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  XP_INT_REISSUE_EN ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC6(struct xgbe_prv_data *pdata)
{
	unsigned int reg;

	/* Disable AN interrupts */
	FUNC4(pdata);

	/* Save the interrupt(s) that fired */
	reg = FUNC0(pdata, MDIO_MMD_VEND2, MDIO_VEND2_AN_STAT);
	pdata->an_int = reg & XGBE_AN_CL37_INT_MASK;
	pdata->an_status = reg & ~XGBE_AN_CL37_INT_MASK;

	if (pdata->an_int) {
		/* Clear the interrupt(s) that fired and process them */
		reg &= ~XGBE_AN_CL37_INT_MASK;
		FUNC1(pdata, MDIO_MMD_VEND2, MDIO_VEND2_AN_STAT, reg);

		FUNC3(pdata->an_workqueue, &pdata->an_irq_work);
	} else {
		/* Enable AN interrupts */
		FUNC5(pdata);

		/* Reissue interrupt if status is not clear */
		if (pdata->vdata->irq_reissue_support)
			FUNC2(pdata, XP_INT_REISSUE_EN, 1 << 3);
	}
}