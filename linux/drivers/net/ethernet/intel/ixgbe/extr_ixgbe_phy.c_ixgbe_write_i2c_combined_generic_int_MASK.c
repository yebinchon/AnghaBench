#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_5__ {int /*<<< orphan*/  (* release_swfw_sync ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  phy_semaphore_mask; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ phy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_ERR_I2C ; 
 int /*<<< orphan*/  IXGBE_ERR_SWFW_SYNC ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (struct ixgbe_hw*,int) ; 
 scalar_t__ FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 

s32 FUNC9(struct ixgbe_hw *hw, u8 addr,
					 u16 reg, u16 val, bool lock)
{
	u32 swfw_mask = hw->phy.phy_semaphore_mask;
	int max_retry = 1;
	int retry = 0;
	u8 reg_high;
	u8 csum;

	reg_high = (reg >> 7) & 0xFE;   /* Indicate write combined */
	csum = FUNC4(reg_high, reg & 0xFF);
	csum = FUNC4(csum, val >> 8);
	csum = FUNC4(csum, val & 0xFF);
	csum = ~csum;
	do {
		if (lock && hw->mac.ops.acquire_swfw_sync(hw, swfw_mask))
			return IXGBE_ERR_SWFW_SYNC;
		FUNC2(hw);
		/* Device Address and write indication */
		if (FUNC5(hw, addr))
			goto fail;
		/* Write bits 14:8 */
		if (FUNC5(hw, reg_high))
			goto fail;
		/* Write bits 7:0 */
		if (FUNC5(hw, reg & 0xFF))
			goto fail;
		/* Write data 15:8 */
		if (FUNC5(hw, val >> 8))
			goto fail;
		/* Write data 7:0 */
		if (FUNC5(hw, val & 0xFF))
			goto fail;
		/* Write csum */
		if (FUNC5(hw, csum))
			goto fail;
		FUNC3(hw);
		if (lock)
			hw->mac.ops.release_swfw_sync(hw, swfw_mask);
		return 0;

fail:
		FUNC1(hw);
		if (lock)
			hw->mac.ops.release_swfw_sync(hw, swfw_mask);
		retry++;
		if (retry < max_retry)
			FUNC0(hw, "I2C byte write combined error - Retry.\n");
		else
			FUNC0(hw, "I2C byte write combined error.\n");
	} while (retry < max_retry);

	return IXGBE_ERR_I2C;
}