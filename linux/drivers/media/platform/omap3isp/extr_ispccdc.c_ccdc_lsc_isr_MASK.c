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
typedef  int u32 ;
struct isp_pipeline {int error; } ;
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/  req_lock; int /*<<< orphan*/ * request; } ;
struct TYPE_3__ {int /*<<< orphan*/  entity; } ;
struct isp_ccdc_device {TYPE_2__ lsc; TYPE_1__ subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCDC_EVENT_LSC_DONE ; 
 int IRQ0STATUS_CCDC_LSC_DONE_IRQ ; 
 int IRQ0STATUS_CCDC_LSC_PREF_ERR_IRQ ; 
 int IRQ0STATUS_HS_VS_IRQ ; 
 scalar_t__ LSC_STATE_RECONFIG ; 
 void* LSC_STATE_STOPPED ; 
 scalar_t__ LSC_STATE_STOPPING ; 
 scalar_t__ FUNC0 (struct isp_ccdc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_ccdc_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_ccdc_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct isp_ccdc_device*) ; 
 struct isp_pipeline* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct isp_ccdc_device *ccdc, u32 events)
{
	unsigned long flags;

	if (events & IRQ0STATUS_CCDC_LSC_PREF_ERR_IRQ) {
		struct isp_pipeline *pipe =
			FUNC7(&ccdc->subdev.entity);

		FUNC2(ccdc);
		pipe->error = true;
		FUNC3(FUNC6(ccdc), "lsc prefetch error\n");
	}

	if (!(events & IRQ0STATUS_CCDC_LSC_DONE_IRQ))
		return;

	/* LSC_DONE interrupt occur, there are two cases
	 * 1. stopping for reconfiguration
	 * 2. stopping because of STREAM OFF command
	 */
	FUNC4(&ccdc->lsc.req_lock, flags);

	if (ccdc->lsc.state == LSC_STATE_STOPPING)
		ccdc->lsc.state = LSC_STATE_STOPPED;

	if (FUNC0(ccdc, CCDC_EVENT_LSC_DONE))
		goto done;

	if (ccdc->lsc.state != LSC_STATE_RECONFIG)
		goto done;

	/* LSC is in STOPPING state, change to the new state */
	ccdc->lsc.state = LSC_STATE_STOPPED;

	/* This is an exception. Start of frame and LSC_DONE interrupt
	 * have been received on the same time. Skip this event and wait
	 * for better times.
	 */
	if (events & IRQ0STATUS_HS_VS_IRQ)
		goto done;

	/* The LSC engine is stopped at this point. Enable it if there's a
	 * pending request.
	 */
	if (ccdc->lsc.request == NULL)
		goto done;

	FUNC1(ccdc);

done:
	FUNC5(&ccdc->lsc.req_lock, flags);
}