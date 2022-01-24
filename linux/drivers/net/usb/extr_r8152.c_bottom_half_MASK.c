#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct r8152 {int /*<<< orphan*/  flags; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTL8152_UNPLUG ; 
 int /*<<< orphan*/  SCHEDULE_TASKLET ; 
 int /*<<< orphan*/  WORK_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct r8152*) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct r8152 *tp;

	tp = (struct r8152 *)data;

	if (FUNC2(RTL8152_UNPLUG, &tp->flags))
		return;

	if (!FUNC2(WORK_ENABLE, &tp->flags))
		return;

	/* When link down, the driver would cancel all bulks. */
	/* This avoid the re-submitting bulk */
	if (!FUNC1(tp->netdev))
		return;

	FUNC0(SCHEDULE_TASKLET, &tp->flags);

	FUNC3(tp);
}