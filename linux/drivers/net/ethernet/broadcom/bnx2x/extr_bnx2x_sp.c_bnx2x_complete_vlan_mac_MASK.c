#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ error; } ;
union event_ring_elem {TYPE_1__ message; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct bnx2x_raw_obj {int /*<<< orphan*/  (* clear_pending ) (struct bnx2x_raw_obj*) ;} ;
struct bnx2x_vlan_mac_obj {TYPE_2__ exe_queue; struct bnx2x_raw_obj raw; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RAMROD_CONT ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,TYPE_2__*) ; 
 int FUNC1 (struct bnx2x*,struct bnx2x_vlan_mac_obj*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x_raw_obj*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC7(struct bnx2x *bp,
				   struct bnx2x_vlan_mac_obj *o,
				   union event_ring_elem *cqe,
				   unsigned long *ramrod_flags)
{
	struct bnx2x_raw_obj *r = &o->raw;
	int rc;

	/* Clearing the pending list & raw state should be made
	 * atomically (as execution flow assumes they represent the same).
	 */
	FUNC3(&o->exe_queue.lock);

	/* Reset pending list */
	FUNC0(bp, &o->exe_queue);

	/* Clear pending */
	r->clear_pending(r);

	FUNC4(&o->exe_queue.lock);

	/* If ramrod failed this is most likely a SW bug */
	if (cqe->message.error)
		return -EINVAL;

	/* Run the next bulk of pending commands if requested */
	if (FUNC6(RAMROD_CONT, ramrod_flags)) {
		rc = FUNC1(bp, o, ramrod_flags);

		if (rc < 0)
			return rc;
	}

	/* If there is more work to do return PENDING */
	if (!FUNC2(&o->exe_queue))
		return 1;

	return 0;
}