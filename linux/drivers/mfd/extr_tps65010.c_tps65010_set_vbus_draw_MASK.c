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
struct TYPE_2__ {unsigned int vbus; int chgstatus; int /*<<< orphan*/  work; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FLAG_VBUS_CHANGED ; 
 int TPS_CHG_USB ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* the_tps ; 

int FUNC4(unsigned mA)
{
	unsigned long	flags;

	if (!the_tps)
		return -ENODEV;

	/* assumes non-SMP */
	FUNC1(flags);
	if (mA >= 500)
		mA = 500;
	else if (mA >= 100)
		mA = 100;
	else
		mA = 0;
	the_tps->vbus = mA;
	if ((the_tps->chgstatus & TPS_CHG_USB)
			&& FUNC3(
				FLAG_VBUS_CHANGED, &the_tps->flags)) {
		/* gadget drivers call this in_irq() */
		FUNC2(system_power_efficient_wq, &the_tps->work,
				   0);
	}
	FUNC0(flags);

	return 0;
}