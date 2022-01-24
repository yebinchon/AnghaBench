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
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*) ; 
 int IXGBE_FWSM_FW_MODE_PT ; 
 int FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ ixgbe_mac_82599EB ; 

bool FUNC2(struct ixgbe_hw *hw)
{
	u32 fwsm;

	if (hw->mac.type < ixgbe_mac_82599EB)
		return false;

	fwsm = FUNC1(hw, FUNC0(hw));

	return !!(fwsm & IXGBE_FWSM_FW_MODE_PT);
}