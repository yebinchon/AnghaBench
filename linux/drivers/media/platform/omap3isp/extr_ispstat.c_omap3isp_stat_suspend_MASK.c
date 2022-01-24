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
struct ispstat {scalar_t__ state; TYPE_2__* isp; TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  stat_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* enable ) (struct ispstat*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ ISPSTAT_DISABLED ; 
 scalar_t__ ISPSTAT_ENABLED ; 
 scalar_t__ ISPSTAT_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct ispstat*,int /*<<< orphan*/ ) ; 

void FUNC3(struct ispstat *stat)
{
	unsigned long flags;

	FUNC0(&stat->isp->stat_lock, flags);

	if (stat->state != ISPSTAT_DISABLED)
		stat->ops->enable(stat, 0);
	if (stat->state == ISPSTAT_ENABLED)
		stat->state = ISPSTAT_SUSPENDED;

	FUNC1(&stat->isp->stat_lock, flags);
}