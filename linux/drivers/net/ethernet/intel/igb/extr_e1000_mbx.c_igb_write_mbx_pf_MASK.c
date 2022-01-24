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
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct TYPE_3__ {int /*<<< orphan*/  msgs_tx; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct e1000_hw {TYPE_2__ mbx; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  E1000_P2VMAILBOX_STS ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,size_t) ; 
 scalar_t__ FUNC5 (struct e1000_hw*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC7(struct e1000_hw *hw, u32 *msg, u16 size,
			    u16 vf_number)
{
	s32 ret_val;
	u16 i;

	/* lock the mailbox to prevent pf/vf race condition */
	ret_val = FUNC5(hw, vf_number);
	if (ret_val)
		goto out_no_write;

	/* flush msg and acks as we are overwriting the message buffer */
	FUNC4(hw, vf_number);
	FUNC3(hw, vf_number);

	/* copy the caller specified message to the mailbox memory buffer */
	for (i = 0; i < size; i++)
		FUNC2(FUNC1(vf_number), i, msg[i]);

	/* Interrupt VF to tell it a message has been sent and release buffer*/
	FUNC6(FUNC0(vf_number), E1000_P2VMAILBOX_STS);

	/* update stats */
	hw->mbx.stats.msgs_tx++;

out_no_write:
	return ret_val;

}