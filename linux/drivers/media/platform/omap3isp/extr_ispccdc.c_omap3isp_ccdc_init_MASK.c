#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ dcsubval; scalar_t__ oblen; } ;
struct TYPE_3__ {int /*<<< orphan*/  req_lock; int /*<<< orphan*/  free_queue; int /*<<< orphan*/  state; int /*<<< orphan*/  table_work; } ;
struct isp_ccdc_device {int /*<<< orphan*/  ioctl_lock; int /*<<< orphan*/  update; TYPE_2__ clamp; TYPE_1__ lsc; int /*<<< orphan*/  stopping; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; } ;
struct isp_device {struct isp_ccdc_device isp_ccdc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCDC_STOP_NOT_REQUESTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LSC_STATE_STOPPED ; 
 int /*<<< orphan*/  OMAP3ISP_CCDC_BLCLAMP ; 
 int /*<<< orphan*/  FUNC2 (struct isp_ccdc_device*) ; 
 int FUNC3 (struct isp_ccdc_device*) ; 
 int /*<<< orphan*/  ccdc_lsc_free_table_work ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct isp_device *isp)
{
	struct isp_ccdc_device *ccdc = &isp->isp_ccdc;
	int ret;

	FUNC7(&ccdc->lock);
	FUNC4(&ccdc->wait);
	FUNC6(&ccdc->ioctl_lock);

	ccdc->stopping = CCDC_STOP_NOT_REQUESTED;

	FUNC1(&ccdc->lsc.table_work, ccdc_lsc_free_table_work);
	ccdc->lsc.state = LSC_STATE_STOPPED;
	FUNC0(&ccdc->lsc.free_queue);
	FUNC7(&ccdc->lsc.req_lock);

	ccdc->clamp.oblen = 0;
	ccdc->clamp.dcsubval = 0;

	ccdc->update = OMAP3ISP_CCDC_BLCLAMP;
	FUNC2(ccdc);

	ret = FUNC3(ccdc);
	if (ret < 0) {
		FUNC5(&ccdc->ioctl_lock);
		return ret;
	}

	return 0;
}