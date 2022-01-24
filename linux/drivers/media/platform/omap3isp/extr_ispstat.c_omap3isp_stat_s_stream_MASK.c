#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct ispstat {TYPE_1__ subdev; TYPE_2__* isp; TYPE_3__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* enable ) (struct ispstat*,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  stat_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ispstat*) ; 
 int /*<<< orphan*/  FUNC2 (struct ispstat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ispstat*) ; 
 int /*<<< orphan*/  FUNC4 (struct ispstat*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct ispstat*,int /*<<< orphan*/ ) ; 
 struct ispstat* FUNC8 (struct v4l2_subdev*) ; 

int FUNC9(struct v4l2_subdev *subdev, int enable)
{
	struct ispstat *stat = FUNC8(subdev);

	if (enable) {
		/*
		 * Only set enable PCR bit if the module was previously
		 * enabled through ioctl.
		 */
		FUNC1(stat);
	} else {
		unsigned long flags;
		/* Disable PCR bit and config enable field */
		FUNC2(stat, 0);
		FUNC5(&stat->isp->stat_lock, flags);
		stat->ops->enable(stat, 0);
		FUNC6(&stat->isp->stat_lock, flags);

		/*
		 * If module isn't busy, a new interrupt may come or not to
		 * set the state to DISABLED. As Histogram needs to read its
		 * internal memory to clear it, let interrupt handler
		 * responsible of changing state to DISABLED. If the last
		 * interrupt is coming, it's still safe as the handler will
		 * ignore the second time when state is already set to DISABLED.
		 * It's necessary to synchronize Histogram with streamoff, once
		 * the module may be considered idle before last SDMA transfer
		 * starts if we return here.
		 */
		if (!FUNC4(stat))
			FUNC3(stat);

		FUNC0(stat->isp->dev, "%s: module is being disabled\n",
			stat->subdev.name);
	}

	return 0;
}