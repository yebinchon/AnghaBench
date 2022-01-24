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
typedef  int u64 ;
struct TYPE_3__ {int /*<<< orphan*/  (* check_for_link ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {int /*<<< orphan*/  mbx_lock; TYPE_2__ mac; } ;
struct igbvf_adapter {struct e1000_hw hw; } ;

/* Variables and functions */
 int E1000_STATUS_LU ; 
 int /*<<< orphan*/  STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 

__attribute__((used)) static int FUNC4(struct igbvf_adapter *adapter, u64 *data)
{
	struct e1000_hw *hw = &adapter->hw;
	*data = 0;

	FUNC1(&hw->mbx_lock);

	hw->mac.ops.check_for_link(hw);

	FUNC2(&hw->mbx_lock);

	if (!(FUNC0(STATUS) & E1000_STATUS_LU))
		*data = 1;

	return *data;
}