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
struct xgbe_prv_data {int an_int; TYPE_1__* vdata; int /*<<< orphan*/  an_irq_work; int /*<<< orphan*/  an_workqueue; } ;
struct TYPE_2__ {scalar_t__ irq_reissue_support; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_AN_INT ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 int FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  XP_INT_REISSUE_EN ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC6(struct xgbe_prv_data *pdata)
{
	/* Disable AN interrupts */
	FUNC4(pdata);

	/* Save the interrupt(s) that fired */
	pdata->an_int = FUNC0(pdata, MDIO_MMD_AN, MDIO_AN_INT);

	if (pdata->an_int) {
		/* Clear the interrupt(s) that fired and process them */
		FUNC1(pdata, MDIO_MMD_AN, MDIO_AN_INT, ~pdata->an_int);

		FUNC3(pdata->an_workqueue, &pdata->an_irq_work);
	} else {
		/* Enable AN interrupts */
		FUNC5(pdata);

		/* Reissue interrupt if status is not clear */
		if (pdata->vdata->irq_reissue_support)
			FUNC2(pdata, XP_INT_REISSUE_EN, 1 << 3);
	}
}