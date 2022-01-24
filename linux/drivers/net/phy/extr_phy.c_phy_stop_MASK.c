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
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct phy_device {TYPE_1__ state_queue; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_HALTED ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct phy_device*) ; 

void FUNC7(struct phy_device *phydev)
{
	if (!FUNC3(phydev)) {
		FUNC0(1, "called from state %s\n",
		     FUNC5(phydev->state));
		return;
	}

	FUNC1(&phydev->lock);

	phydev->state = PHY_HALTED;

	FUNC2(&phydev->lock);

	FUNC4(&phydev->state_queue.work);
	FUNC6(phydev);

	/* Cannot call flush_scheduled_work() here as desired because
	 * of rtnl_lock(), but PHY_HALTED shall guarantee irq handler
	 * will not reenable interrupts.
	 */
}