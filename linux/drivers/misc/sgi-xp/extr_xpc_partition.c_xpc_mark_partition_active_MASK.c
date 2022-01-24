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
struct xpc_partition {scalar_t__ act_state; scalar_t__ reason; int /*<<< orphan*/  act_lock; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct xpc_partition*) ; 
 scalar_t__ XPC_P_AS_ACTIVATING ; 
 scalar_t__ XPC_P_AS_ACTIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ xpSuccess ; 
 int /*<<< orphan*/  xpc_part ; 

enum xp_retval
FUNC5(struct xpc_partition *part)
{
	unsigned long irq_flags;
	enum xp_retval ret;

	FUNC2(xpc_part, "setting partition %d to ACTIVE\n", FUNC1(part));

	FUNC3(&part->act_lock, irq_flags);
	if (part->act_state == XPC_P_AS_ACTIVATING) {
		part->act_state = XPC_P_AS_ACTIVE;
		ret = xpSuccess;
	} else {
		FUNC0(part->reason == xpSuccess);
		ret = part->reason;
	}
	FUNC4(&part->act_lock, irq_flags);

	return ret;
}