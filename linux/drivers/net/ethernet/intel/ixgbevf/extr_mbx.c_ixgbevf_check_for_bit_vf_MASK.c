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
typedef  int u32 ;
struct TYPE_2__ {int v2p_mailbox; } ;
struct ixgbe_hw {TYPE_1__ mbx; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ IXGBE_ERR_MBX ; 
 int FUNC0 (struct ixgbe_hw*) ; 

__attribute__((used)) static s32 FUNC1(struct ixgbe_hw *hw, u32 mask)
{
	u32 v2p_mailbox = FUNC0(hw);
	s32 ret_val = IXGBE_ERR_MBX;

	if (v2p_mailbox & mask)
		ret_val = 0;

	hw->mbx.v2p_mailbox &= ~mask;

	return ret_val;
}