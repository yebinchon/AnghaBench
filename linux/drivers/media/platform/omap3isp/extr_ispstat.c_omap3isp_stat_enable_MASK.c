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
typedef  scalar_t__ u8 ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct ispstat {scalar_t__ state; int /*<<< orphan*/  ioctl_lock; TYPE_2__* isp; TYPE_1__ subdev; int /*<<< orphan*/  configured; } ;
struct TYPE_4__ {int /*<<< orphan*/  stat_lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ ISPSTAT_DISABLED ; 
 scalar_t__ ISPSTAT_DISABLING ; 
 scalar_t__ ISPSTAT_ENABLED ; 
 scalar_t__ ISPSTAT_ENABLING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ispstat*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct ispstat *stat, u8 enable)
{
	unsigned long irqflags;

	FUNC0(stat->isp->dev, "%s: user wants to %s module.\n",
		stat->subdev.name, enable ? "enable" : "disable");

	/* Prevent enabling while configuring */
	FUNC2(&stat->ioctl_lock);

	FUNC4(&stat->isp->stat_lock, irqflags);

	if (!stat->configured && enable) {
		FUNC5(&stat->isp->stat_lock, irqflags);
		FUNC3(&stat->ioctl_lock);
		FUNC0(stat->isp->dev,
			"%s: cannot enable module as it's never been successfully configured so far.\n",
			stat->subdev.name);
		return -EINVAL;
	}

	if (enable) {
		if (stat->state == ISPSTAT_DISABLING)
			/* Previous disabling request wasn't done yet */
			stat->state = ISPSTAT_ENABLED;
		else if (stat->state == ISPSTAT_DISABLED)
			/* Module is now being enabled */
			stat->state = ISPSTAT_ENABLING;
	} else {
		if (stat->state == ISPSTAT_ENABLING) {
			/* Previous enabling request wasn't done yet */
			stat->state = ISPSTAT_DISABLED;
		} else if (stat->state == ISPSTAT_ENABLED) {
			/* Module is now being disabled */
			stat->state = ISPSTAT_DISABLING;
			FUNC1(stat);
		}
	}

	FUNC5(&stat->isp->stat_lock, irqflags);
	FUNC3(&stat->ioctl_lock);

	return 0;
}