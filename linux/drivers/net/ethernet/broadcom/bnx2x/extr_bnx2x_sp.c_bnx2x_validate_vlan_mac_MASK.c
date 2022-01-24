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
typedef  union bnx2x_qable_obj {int dummy; } bnx2x_qable_obj ;
struct TYPE_3__ {int cmd; } ;
struct TYPE_4__ {TYPE_1__ vlan_mac; } ;
struct bnx2x_exeq_elem {TYPE_2__ cmd_data; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
#define  BNX2X_VLAN_MAC_ADD 130 
#define  BNX2X_VLAN_MAC_DEL 129 
#define  BNX2X_VLAN_MAC_MOVE 128 
 int EINVAL ; 
 int FUNC0 (struct bnx2x*,union bnx2x_qable_obj*,struct bnx2x_exeq_elem*) ; 
 int FUNC1 (struct bnx2x*,union bnx2x_qable_obj*,struct bnx2x_exeq_elem*) ; 
 int FUNC2 (struct bnx2x*,union bnx2x_qable_obj*,struct bnx2x_exeq_elem*) ; 

__attribute__((used)) static int FUNC3(struct bnx2x *bp,
				   union bnx2x_qable_obj *qo,
				   struct bnx2x_exeq_elem *elem)
{
	switch (elem->cmd_data.vlan_mac.cmd) {
	case BNX2X_VLAN_MAC_ADD:
		return FUNC0(bp, qo, elem);
	case BNX2X_VLAN_MAC_DEL:
		return FUNC1(bp, qo, elem);
	case BNX2X_VLAN_MAC_MOVE:
		return FUNC2(bp, qo, elem);
	default:
		return -EINVAL;
	}
}