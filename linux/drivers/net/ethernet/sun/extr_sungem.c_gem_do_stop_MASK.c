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
struct net_device {int dummy; } ;
struct gem {TYPE_1__* pdev; scalar_t__ reset_task_pending; int /*<<< orphan*/  link_timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct gem*) ; 
 int /*<<< orphan*/  FUNC3 (struct gem*) ; 
 int /*<<< orphan*/  FUNC4 (struct gem*) ; 
 int /*<<< orphan*/  FUNC5 (struct gem*) ; 
 int /*<<< orphan*/  FUNC6 (struct gem*) ; 
 int /*<<< orphan*/  FUNC7 (struct gem*) ; 
 int /*<<< orphan*/  FUNC8 (struct gem*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct gem* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC12(struct net_device *dev, int wol)
{
	struct gem *gp = FUNC10(dev);

	/* Stop NAPI and stop tx queue */
	FUNC4(gp);

	/* Make sure ints are disabled. We don't care about
	 * synchronizing as NAPI is disabled, thus a stray
	 * interrupt will do nothing bad (our irq handler
	 * just schedules NAPI)
	 */
	FUNC3(gp);

	/* Stop the link timer */
	FUNC0(&gp->link_timer);

	/* We cannot cancel the reset task while holding the
	 * rtnl lock, we'd get an A->B / B->A deadlock stituation
	 * if we did. This is not an issue however as the reset
	 * task is synchronized vs. us (rtnl_lock) and will do
	 * nothing if the device is down or suspended. We do
	 * still clear reset_task_pending to avoid a spurrious
	 * reset later on in case we do resume before it gets
	 * scheduled.
	 */
	gp->reset_task_pending = 0;

	/* If we are going to sleep with WOL */
	FUNC7(gp);
	FUNC9(10);
	if (!wol)
		FUNC6(gp);
	FUNC9(10);

	/* Get rid of rings */
	FUNC2(gp);

	/* No irq needed anymore */
	FUNC1(gp->pdev->irq, (void *) dev);

	/* Shut the PHY down eventually and setup WOL */
	FUNC8(gp, wol);

	/* Make sure bus master is disabled */
	FUNC11(gp->pdev);

	/* Cell not needed neither if no WOL */
	if (!wol)
		FUNC5(gp);
}