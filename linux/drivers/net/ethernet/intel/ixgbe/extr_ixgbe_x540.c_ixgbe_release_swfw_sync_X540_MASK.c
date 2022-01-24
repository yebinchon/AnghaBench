#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct ixgbe_hw {int dummy; } ;

/* Variables and functions */
 int IXGBE_GSSR_I2C_MASK ; 
 int IXGBE_GSSR_NVM_PHY_MASK ; 
 int IXGBE_GSSR_SW_MNG_SM ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

void FUNC6(struct ixgbe_hw *hw, u32 mask)
{
	u32 swmask = mask & (IXGBE_GSSR_NVM_PHY_MASK | IXGBE_GSSR_SW_MNG_SM);
	u32 swfw_sync;

	if (mask & IXGBE_GSSR_I2C_MASK)
		swmask |= mask & IXGBE_GSSR_I2C_MASK;
	FUNC3(hw);

	swfw_sync = FUNC0(hw, FUNC1(hw));
	swfw_sync &= ~swmask;
	FUNC2(hw, FUNC1(hw), swfw_sync);

	FUNC4(hw);
	FUNC5(5000, 6000);
}