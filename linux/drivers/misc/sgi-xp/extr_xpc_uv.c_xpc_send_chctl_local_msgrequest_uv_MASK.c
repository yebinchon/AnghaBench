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
struct TYPE_2__ {int /*<<< orphan*/ * flags; } ;
struct xpc_partition {int /*<<< orphan*/  chctl_lock; TYPE_1__ chctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPC_CHCTL_MSGREQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct xpc_partition*) ; 

__attribute__((used)) static void
FUNC3(struct xpc_partition *part, int ch_number)
{
	unsigned long irq_flags;

	FUNC0(&part->chctl_lock, irq_flags);
	part->chctl.flags[ch_number] |= XPC_CHCTL_MSGREQUEST;
	FUNC1(&part->chctl_lock, irq_flags);

	FUNC2(part);
}