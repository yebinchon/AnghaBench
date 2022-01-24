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
struct xpc_partition {int dummy; } ;
struct xpc_channel {size_t partid; int /*<<< orphan*/  lock; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xpc_partition*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 
 int xpSuccess ; 
 struct xpc_partition* xpc_partitions ; 
 int FUNC4 (struct xpc_partition*,void*,size_t,int) ; 

__attribute__((used)) static void
FUNC5(struct xpc_channel *ch, unsigned long *irq_flags,
			 void *msg, size_t msg_size, int msg_type)
{
	struct xpc_partition *part = &xpc_partitions[ch->partid];
	enum xp_retval ret;

	ret = FUNC4(part, msg, msg_size, msg_type);
	if (FUNC3(ret != xpSuccess)) {
		if (irq_flags != NULL)
			FUNC2(&ch->lock, *irq_flags);

		FUNC0(part, ret);

		if (irq_flags != NULL)
			FUNC1(&ch->lock, *irq_flags);
	}
}