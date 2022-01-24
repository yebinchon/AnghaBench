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
struct TYPE_2__ {int /*<<< orphan*/  free_queue; int /*<<< orphan*/  table_work; int /*<<< orphan*/ * active; int /*<<< orphan*/ * request; } ;
struct isp_ccdc_device {scalar_t__ state; scalar_t__ stopping; int /*<<< orphan*/  ioctl_lock; TYPE_1__ lsc; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  running; } ;

/* Variables and functions */
 scalar_t__ CCDC_STOP_FINISHED ; 
 scalar_t__ CCDC_STOP_NOT_REQUESTED ; 
 scalar_t__ CCDC_STOP_REQUEST ; 
 int ETIMEDOUT ; 
 scalar_t__ ISP_PIPELINE_STREAM_CONTINUOUS ; 
 int /*<<< orphan*/  OMAP3_ISP_SBL_CCDC_LSC_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_ccdc_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_ccdc_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct isp_ccdc_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct isp_ccdc_device*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct isp_ccdc_device *ccdc)
{
	unsigned long flags;
	int ret = 0;

	FUNC8(&ccdc->lock, flags);
	if (ccdc->state == ISP_PIPELINE_STREAM_CONTINUOUS)
		ccdc->stopping = CCDC_STOP_REQUEST;
	if (!ccdc->running)
		ccdc->stopping = CCDC_STOP_FINISHED;
	FUNC9(&ccdc->lock, flags);

	ret = FUNC12(ccdc->wait,
				 ccdc->stopping == CCDC_STOP_FINISHED,
				 FUNC4(2000));
	if (ret == 0) {
		ret = -ETIMEDOUT;
		FUNC3(FUNC10(ccdc), "CCDC stop timeout!\n");
	}

	FUNC7(FUNC11(ccdc), OMAP3_ISP_SBL_CCDC_LSC_READ);

	FUNC5(&ccdc->ioctl_lock);
	FUNC2(ccdc, ccdc->lsc.request);
	ccdc->lsc.request = ccdc->lsc.active;
	ccdc->lsc.active = NULL;
	FUNC0(&ccdc->lsc.table_work);
	FUNC1(ccdc, &ccdc->lsc.free_queue);
	FUNC6(&ccdc->ioctl_lock);

	ccdc->stopping = CCDC_STOP_NOT_REQUESTED;

	return ret > 0 ? 0 : ret;
}