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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct bnx2x_vlan_mac_obj {TYPE_1__ exe_queue; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_SP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_vlan_mac_obj*,unsigned long) ; 
 int FUNC2 (struct bnx2x*,struct bnx2x_vlan_mac_obj*) ; 
 int FUNC3 (struct bnx2x*,TYPE_1__*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct bnx2x *bp,
					 struct bnx2x_vlan_mac_obj *o,
					 unsigned long *ramrod_flags)
{
	int rc = 0;

	FUNC4(&o->exe_queue.lock);

	FUNC0(BNX2X_MSG_SP, "vlan_mac_execute_step - trying to take writer lock\n");
	rc = FUNC2(bp, o);

	if (rc != 0) {
		FUNC1(bp, o, *ramrod_flags);

		/* Calling function should not differentiate between this case
		 * and the case in which there is already a pending ramrod
		 */
		rc = 1;
	} else {
		rc = FUNC3(bp, &o->exe_queue, ramrod_flags);
	}
	FUNC5(&o->exe_queue.lock);

	return rc;
}