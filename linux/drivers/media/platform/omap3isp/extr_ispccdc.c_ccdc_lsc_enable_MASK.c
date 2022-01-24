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
struct ispccdc_lsc {scalar_t__ state; int /*<<< orphan*/  table_work; int /*<<< orphan*/  free_queue; TYPE_1__* request; TYPE_1__* active; } ;
struct isp_ccdc_device {struct ispccdc_lsc lsc; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ LSC_STATE_STOPPED ; 
 int /*<<< orphan*/  OMAP3_ISP_SBL_CCDC_LSC_READ ; 
 scalar_t__ FUNC0 (struct isp_ccdc_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_ccdc_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct isp_ccdc_device*) ; 

__attribute__((used)) static int FUNC7(struct isp_ccdc_device *ccdc)
{
	struct ispccdc_lsc *lsc = &ccdc->lsc;

	if (lsc->state != LSC_STATE_STOPPED)
		return -EINVAL;

	if (lsc->active) {
		FUNC2(&lsc->active->list, &lsc->free_queue);
		lsc->active = NULL;
	}

	if (FUNC0(ccdc, lsc->request) < 0) {
		FUNC4(FUNC6(ccdc),
				OMAP3_ISP_SBL_CCDC_LSC_READ);
		FUNC2(&lsc->request->list, &lsc->free_queue);
		lsc->request = NULL;
		goto done;
	}

	lsc->active = lsc->request;
	lsc->request = NULL;
	FUNC1(ccdc, 1);

done:
	if (!FUNC3(&lsc->free_queue))
		FUNC5(&lsc->table_work);

	return 0;
}