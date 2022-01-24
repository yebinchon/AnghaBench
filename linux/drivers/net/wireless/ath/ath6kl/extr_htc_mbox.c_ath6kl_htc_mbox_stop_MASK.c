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
struct htc_target {int /*<<< orphan*/  dev; int /*<<< orphan*/  htc_lock; int /*<<< orphan*/  htc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  HTC_OP_STATE_STOPPING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct htc_target*) ; 
 int /*<<< orphan*/  FUNC2 (struct htc_target*) ; 
 int /*<<< orphan*/  FUNC3 (struct htc_target*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct htc_target *target)
{
	FUNC4(&target->htc_lock);
	target->htc_flags |= HTC_OP_STATE_STOPPING;
	FUNC5(&target->htc_lock);

	/*
	 * Masking interrupts is a synchronous operation, when this
	 * function returns all pending HIF I/O has completed, we can
	 * safely flush the queues.
	 */
	FUNC0(target->dev);

	FUNC1(target);

	FUNC2(target);

	FUNC3(target);
}