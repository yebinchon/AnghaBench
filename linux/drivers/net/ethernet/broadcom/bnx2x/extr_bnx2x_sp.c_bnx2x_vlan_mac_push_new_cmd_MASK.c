#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cmd; } ;
struct bnx2x_vlan_mac_ramrod_params {TYPE_2__ user_req; int /*<<< orphan*/  ramrod_flags; struct bnx2x_vlan_mac_obj* vlan_mac_obj; } ;
struct bnx2x_vlan_mac_obj {int /*<<< orphan*/  exe_queue; } ;
struct TYPE_3__ {int /*<<< orphan*/  vlan_mac; } ;
struct bnx2x_exeq_elem {int cmd_len; TYPE_1__ cmd_data; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
#define  BNX2X_VLAN_MAC_MOVE 128 
 int ENOMEM ; 
 int /*<<< orphan*/  RAMROD_RESTORE ; 
 int FUNC0 (struct bnx2x*,int /*<<< orphan*/ *,struct bnx2x_exeq_elem*,int) ; 
 struct bnx2x_exeq_elem* FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC4(
	struct bnx2x *bp,
	struct bnx2x_vlan_mac_ramrod_params *p)
{
	struct bnx2x_exeq_elem *elem;
	struct bnx2x_vlan_mac_obj *o = p->vlan_mac_obj;
	bool restore = FUNC3(RAMROD_RESTORE, &p->ramrod_flags);

	/* Allocate the execution queue element */
	elem = FUNC1(bp);
	if (!elem)
		return -ENOMEM;

	/* Set the command 'length' */
	switch (p->user_req.cmd) {
	case BNX2X_VLAN_MAC_MOVE:
		elem->cmd_len = 2;
		break;
	default:
		elem->cmd_len = 1;
	}

	/* Fill the object specific info */
	FUNC2(&elem->cmd_data.vlan_mac, &p->user_req, sizeof(p->user_req));

	/* Try to add a new command to the pending list */
	return FUNC0(bp, &o->exe_queue, elem, restore);
}