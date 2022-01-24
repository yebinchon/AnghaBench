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
struct e1000_hw {TYPE_2__ mbx; int /*<<< orphan*/  mbx_lock; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_V2PMAILBOX_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*) ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static s32 FUNC8(struct e1000_hw *hw, u32 *msg, u16 size)
{
	s32 err;
	u16 i;

	FUNC7(&hw->mbx_lock);

	/* lock the mailbox to prevent pf/vf race condition */
	err = FUNC5(hw);
	if (err)
		goto out_no_write;

	/* flush any ack or msg as we are going to overwrite mailbox */
	FUNC3(hw);
	FUNC4(hw);

	/* copy the caller specified message to the mailbox memory buffer */
	for (i = 0; i < size; i++)
		FUNC2(FUNC1(0), i, msg[i]);

	/* update stats */
	hw->mbx.stats.msgs_tx++;

	/* Drop VFU and interrupt the PF to tell it a message has been sent */
	FUNC6(FUNC0(0), E1000_V2PMAILBOX_REQ);

out_no_write:
	return err;
}