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
struct TYPE_3__ {int /*<<< orphan*/  msgs_rx; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct ixgbe_hw {TYPE_2__ mbx; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  IXGBE_PFMAILBOX_ACK ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ixgbe_hw*,size_t) ; 

__attribute__((used)) static s32 FUNC5(struct ixgbe_hw *hw, u32 *msg, u16 size,
			     u16 vf_number)
{
	s32 ret_val;
	u16 i;

	/* lock the mailbox to prevent pf/vf race condition */
	ret_val = FUNC4(hw, vf_number);
	if (ret_val)
		return ret_val;

	/* copy the message to the mailbox memory buffer */
	for (i = 0; i < size; i++)
		msg[i] = FUNC2(hw, FUNC1(vf_number), i);

	/* Acknowledge the message and release buffer */
	FUNC3(hw, FUNC0(vf_number), IXGBE_PFMAILBOX_ACK);

	/* update stats */
	hw->mbx.stats.msgs_rx++;

	return 0;
}