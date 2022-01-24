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
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  (* release_swfw_sync ) (struct ixgbe_hw*,int) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int) ;} ;
struct TYPE_6__ {scalar_t__ type; TYPE_2__ ops; } ;
struct TYPE_4__ {int phy_semaphore_mask; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ phy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_ERR_SWFW_SYNC ; 
 int IXGBE_SFP_DETECT_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC8 (struct ixgbe_hw*,int,int) ; 
 scalar_t__ ixgbe_mac_X550 ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (struct ixgbe_hw*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbe_hw*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ixgbe_hw*,int) ; 

__attribute__((used)) static s32 FUNC13(struct ixgbe_hw *hw, u8 byte_offset,
					   u8 dev_addr, u8 *data, bool lock)
{
	s32 status;
	u32 max_retry = 10;
	u32 retry = 0;
	u32 swfw_mask = hw->phy.phy_semaphore_mask;
	bool nack = true;

	if (hw->mac.type >= ixgbe_mac_X550)
		max_retry = 3;
	if (FUNC8(hw, byte_offset, dev_addr))
		max_retry = IXGBE_SFP_DETECT_RETRIES;

	*data = 0;

	do {
		if (lock && hw->mac.ops.acquire_swfw_sync(hw, swfw_mask))
			return IXGBE_ERR_SWFW_SYNC;

		FUNC6(hw);

		/* Device Address and write indication */
		status = FUNC3(hw, dev_addr);
		if (status != 0)
			goto fail;

		status = FUNC4(hw);
		if (status != 0)
			goto fail;

		status = FUNC3(hw, byte_offset);
		if (status != 0)
			goto fail;

		status = FUNC4(hw);
		if (status != 0)
			goto fail;

		FUNC6(hw);

		/* Device Address and read indication */
		status = FUNC3(hw, (dev_addr | 0x1));
		if (status != 0)
			goto fail;

		status = FUNC4(hw);
		if (status != 0)
			goto fail;

		status = FUNC1(hw, data);
		if (status != 0)
			goto fail;

		status = FUNC2(hw, nack);
		if (status != 0)
			goto fail;

		FUNC7(hw);
		if (lock)
			hw->mac.ops.release_swfw_sync(hw, swfw_mask);
		return 0;

fail:
		FUNC5(hw);
		if (lock) {
			hw->mac.ops.release_swfw_sync(hw, swfw_mask);
			FUNC9(100);
		}
		retry++;
		if (retry < max_retry)
			FUNC0(hw, "I2C byte read error - Retrying.\n");
		else
			FUNC0(hw, "I2C byte read error.\n");

	} while (retry < max_retry);

	return status;
}