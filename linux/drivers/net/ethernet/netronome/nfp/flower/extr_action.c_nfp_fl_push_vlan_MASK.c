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
typedef  int u16 ;
struct TYPE_4__ {size_t len_lw; int /*<<< orphan*/  jump_id; } ;
struct nfp_fl_push_vlan {int /*<<< orphan*/  vlan_tci; int /*<<< orphan*/  vlan_tpid; scalar_t__ reserved; TYPE_2__ head; } ;
struct TYPE_3__ {int /*<<< orphan*/  vid; int /*<<< orphan*/  prio; int /*<<< orphan*/  proto; } ;
struct flow_action_entry {TYPE_1__ vlan; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFP_FL_ACTION_OPCODE_PUSH_VLAN ; 
 size_t NFP_FL_LW_SIZ ; 
 int /*<<< orphan*/  NFP_FL_PUSH_VLAN_PRIO ; 
 int /*<<< orphan*/  NFP_FL_PUSH_VLAN_VID ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(struct nfp_fl_push_vlan *push_vlan,
		 const struct flow_action_entry *act)
{
	size_t act_size = sizeof(struct nfp_fl_push_vlan);
	u16 tmp_push_vlan_tci;

	push_vlan->head.jump_id = NFP_FL_ACTION_OPCODE_PUSH_VLAN;
	push_vlan->head.len_lw = act_size >> NFP_FL_LW_SIZ;
	push_vlan->reserved = 0;
	push_vlan->vlan_tpid = act->vlan.proto;

	tmp_push_vlan_tci =
		FUNC0(NFP_FL_PUSH_VLAN_PRIO, act->vlan.prio) |
		FUNC0(NFP_FL_PUSH_VLAN_VID, act->vlan.vid);
	push_vlan->vlan_tci = FUNC1(tmp_push_vlan_tci);
}