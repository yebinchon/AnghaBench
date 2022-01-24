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
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct ispstat {int /*<<< orphan*/  recover_priv; int /*<<< orphan*/  priv; int /*<<< orphan*/  buf; int /*<<< orphan*/  ioctl_lock; TYPE_1__ subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ispstat*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ispstat *stat)
{
	FUNC2(&stat->subdev.entity);
	FUNC3(&stat->ioctl_lock);
	FUNC0(stat);
	FUNC1(stat->buf);
	FUNC1(stat->priv);
	FUNC1(stat->recover_priv);
}