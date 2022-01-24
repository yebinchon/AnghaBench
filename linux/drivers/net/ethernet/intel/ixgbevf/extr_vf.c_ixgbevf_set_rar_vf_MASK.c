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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  msgbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  IXGBE_ERR_MBX ; 
 int IXGBE_VF_SET_MAC_ADDR ; 
 int IXGBE_VT_MSGTYPE_CTS ; 
 int IXGBE_VT_MSGTYPE_NACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC5(struct ixgbe_hw *hw, u32 index, u8 *addr,
			      u32 vmdq)
{
	u32 msgbuf[3];
	u8 *msg_addr = (u8 *)(&msgbuf[1]);
	s32 ret_val;

	FUNC4(msgbuf, 0, sizeof(msgbuf));
	msgbuf[0] = IXGBE_VF_SET_MAC_ADDR;
	FUNC1(msg_addr, addr);

	ret_val = FUNC3(hw, msgbuf, msgbuf,
					     FUNC0(msgbuf));
	msgbuf[0] &= ~IXGBE_VT_MSGTYPE_CTS;

	/* if nacked the address was rejected, use "perm_addr" */
	if (!ret_val &&
	    (msgbuf[0] == (IXGBE_VF_SET_MAC_ADDR | IXGBE_VT_MSGTYPE_NACK))) {
		FUNC2(hw, hw->mac.addr);
		return IXGBE_ERR_MBX;
	}

	return ret_val;
}