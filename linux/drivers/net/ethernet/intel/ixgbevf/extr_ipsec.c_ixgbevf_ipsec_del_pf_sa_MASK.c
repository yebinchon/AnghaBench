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
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int (* write_posted ) (struct ixgbe_hw*,scalar_t__*,int) ;int (* read_posted ) (struct ixgbe_hw*,scalar_t__*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mbx; } ;
struct ixgbevf_adapter {int /*<<< orphan*/  mbx_lock; struct ixgbe_hw hw; } ;
typedef  int /*<<< orphan*/  msgbuf ;

/* Variables and functions */
 scalar_t__ IXGBE_VF_IPSEC_DEL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ixgbe_hw*,scalar_t__*,int) ; 
 int FUNC4 (struct ixgbe_hw*,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC5(struct ixgbevf_adapter *adapter, int pfsa)
{
	struct ixgbe_hw *hw = &adapter->hw;
	u32 msgbuf[2];
	int err;

	FUNC0(msgbuf, 0, sizeof(msgbuf));
	msgbuf[0] = IXGBE_VF_IPSEC_DEL;
	msgbuf[1] = (u32)pfsa;

	FUNC1(&adapter->mbx_lock);

	err = hw->mbx.ops.write_posted(hw, msgbuf, 2);
	if (err)
		goto out;

	err = hw->mbx.ops.read_posted(hw, msgbuf, 2);
	if (err)
		goto out;

out:
	FUNC2(&adapter->mbx_lock);
	return err;
}