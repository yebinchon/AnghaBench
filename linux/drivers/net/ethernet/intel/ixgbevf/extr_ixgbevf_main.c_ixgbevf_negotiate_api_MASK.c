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
struct TYPE_4__ {int (* negotiate_api_version ) (struct ixgbe_hw*,int const) ;} ;
struct TYPE_3__ {TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbevf_adapter {int /*<<< orphan*/  mbx_lock; struct ixgbe_hw hw; } ;

/* Variables and functions */
#define  ixgbe_mbox_api_10 133 
#define  ixgbe_mbox_api_11 132 
#define  ixgbe_mbox_api_12 131 
#define  ixgbe_mbox_api_13 130 
#define  ixgbe_mbox_api_14 129 
#define  ixgbe_mbox_api_unknown 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ixgbe_hw*,int const) ; 

__attribute__((used)) static void FUNC3(struct ixgbevf_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	static const int api[] = {
		ixgbe_mbox_api_14,
		ixgbe_mbox_api_13,
		ixgbe_mbox_api_12,
		ixgbe_mbox_api_11,
		ixgbe_mbox_api_10,
		ixgbe_mbox_api_unknown
	};
	int err, idx = 0;

	FUNC0(&adapter->mbx_lock);

	while (api[idx] != ixgbe_mbox_api_unknown) {
		err = hw->mac.ops.negotiate_api_version(hw, api[idx]);
		if (!err)
			break;
		idx++;
	}

	FUNC1(&adapter->mbx_lock);
}