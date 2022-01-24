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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct ptp_system_timestamp {int dummy; } ;
struct mlx5_core_dev {TYPE_1__* iseg; } ;
struct TYPE_2__ {int /*<<< orphan*/  internal_timer_l; int /*<<< orphan*/  internal_timer_h; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ptp_system_timestamp*) ; 
 int /*<<< orphan*/  FUNC2 (struct ptp_system_timestamp*) ; 

u64 FUNC3(struct mlx5_core_dev *dev,
			     struct ptp_system_timestamp *sts)
{
	u32 timer_h, timer_h1, timer_l;

	timer_h = FUNC0(&dev->iseg->internal_timer_h);
	FUNC2(sts);
	timer_l = FUNC0(&dev->iseg->internal_timer_l);
	FUNC1(sts);
	timer_h1 = FUNC0(&dev->iseg->internal_timer_h);
	if (timer_h != timer_h1) {
		/* wrap around */
		FUNC2(sts);
		timer_l = FUNC0(&dev->iseg->internal_timer_l);
		FUNC1(sts);
	}

	return (u64)timer_l | (u64)timer_h1 << 32;
}