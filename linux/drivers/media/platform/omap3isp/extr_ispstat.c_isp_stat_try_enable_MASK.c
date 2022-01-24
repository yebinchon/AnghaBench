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
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct ispstat {scalar_t__ state; int update; TYPE_3__* isp; TYPE_2__ subdev; int /*<<< orphan*/  buf_err; int /*<<< orphan*/  active_buf; int /*<<< orphan*/ * priv; TYPE_1__* ops; scalar_t__ buf_alloc_size; int /*<<< orphan*/  buf_processing; } ;
struct TYPE_6__ {int /*<<< orphan*/  stat_lock; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* setup_regs ) (struct ispstat*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ ISPSTAT_ENABLING ; 
 int /*<<< orphan*/  FUNC0 (struct ispstat*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ispstat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ispstat*) ; 
 int /*<<< orphan*/  FUNC5 (struct ispstat*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct ispstat*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ispstat *stat)
{
	unsigned long irqflags;

	if (stat->priv == NULL)
		/* driver wasn't initialised */
		return;

	FUNC6(&stat->isp->stat_lock, irqflags);
	if (stat->state == ISPSTAT_ENABLING && !stat->buf_processing &&
	    stat->buf_alloc_size) {
		/*
		 * Userspace's requested to enable the engine but it wasn't yet.
		 * Let's do that now.
		 */
		stat->update = 1;
		FUNC4(stat);
		stat->ops->setup_regs(stat, stat->priv);
		FUNC3(stat, stat->active_buf);

		/*
		 * H3A module has some hw issues which forces the driver to
		 * ignore next buffers even if it was disabled in the meantime.
		 * On the other hand, Histogram shouldn't ignore buffers anymore
		 * if it's being enabled.
		 */
		if (!FUNC0(stat))
			FUNC1(&stat->buf_err, 0);

		FUNC5(stat, 1);
		FUNC7(&stat->isp->stat_lock, irqflags);
		FUNC2(stat->isp->dev, "%s: module is enabled.\n",
			stat->subdev.name);
	} else {
		FUNC7(&stat->isp->stat_lock, irqflags);
	}
}