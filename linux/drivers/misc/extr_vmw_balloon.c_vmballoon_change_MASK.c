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
struct vmballoon {int /*<<< orphan*/  shrink_timeout; scalar_t__ reset_required; int /*<<< orphan*/  target; int /*<<< orphan*/  size; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VMW_BALLOON_2M_PAGE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int64_t FUNC4(struct vmballoon *b)
{
	int64_t size, target;

	size = FUNC1(&b->size);
	target = FUNC0(b->target);

	/*
	 * We must cast first because of int sizes
	 * Otherwise we might get huge positives instead of negatives
	 */

	if (b->reset_required)
		return 0;

	/* consider a 2MB slack on deflate, unless the balloon is emptied */
	if (target < size && target != 0 &&
	    size - target < FUNC3(VMW_BALLOON_2M_PAGE))
		return 0;

	/* If an out-of-memory recently occurred, inflation is disallowed. */
	if (target > size && FUNC2(jiffies, FUNC0(b->shrink_timeout)))
		return 0;

	return target - size;
}