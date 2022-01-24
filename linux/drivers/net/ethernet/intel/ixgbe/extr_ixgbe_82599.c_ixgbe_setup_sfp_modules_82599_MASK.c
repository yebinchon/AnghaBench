#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_9__ {scalar_t__ (* read ) (struct ixgbe_hw*,int,int*) ;} ;
struct TYPE_12__ {int semaphore_delay; TYPE_3__ ops; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* release_swfw_sync ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* prot_autoc_write ) (struct ixgbe_hw*,int,int) ;int /*<<< orphan*/  (* acquire_swfw_sync ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;} ;
struct TYPE_11__ {int orig_autoc; TYPE_4__ ops; } ;
struct TYPE_7__ {int /*<<< orphan*/ * reset; } ;
struct TYPE_8__ {scalar_t__ sfp_type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_6__ eeprom; TYPE_5__ mac; TYPE_2__ phy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int IXGBE_AUTOC_LMS_10G_SERIAL ; 
 int /*<<< orphan*/  IXGBE_CORECTL ; 
 int /*<<< orphan*/  IXGBE_ERR_SFP_SETUP_NOT_COMPLETE ; 
 int /*<<< orphan*/  IXGBE_ERR_SWFW_SYNC ; 
 int /*<<< orphan*/  IXGBE_GSSR_MAC_CSR_SM ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*) ; 
 scalar_t__ ixgbe_sfp_type_unknown ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct ixgbe_hw*,int,int*) ; 
 scalar_t__ FUNC8 (struct ixgbe_hw*,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgbe_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 

__attribute__((used)) static s32 FUNC13(struct ixgbe_hw *hw)
{
	s32 ret_val;
	u16 list_offset, data_offset, data_value;

	if (hw->phy.sfp_type != ixgbe_sfp_type_unknown) {
		FUNC5(hw);

		hw->phy.ops.reset = NULL;

		ret_val = FUNC4(hw, &list_offset,
							      &data_offset);
		if (ret_val)
			return ret_val;

		/* PHY config will finish before releasing the semaphore */
		ret_val = hw->mac.ops.acquire_swfw_sync(hw,
							IXGBE_GSSR_MAC_CSR_SM);
		if (ret_val)
			return IXGBE_ERR_SWFW_SYNC;

		if (hw->eeprom.ops.read(hw, ++data_offset, &data_value))
			goto setup_sfp_err;
		while (data_value != 0xffff) {
			FUNC1(hw, IXGBE_CORECTL, data_value);
			FUNC0(hw);
			if (hw->eeprom.ops.read(hw, ++data_offset, &data_value))
				goto setup_sfp_err;
		}

		/* Release the semaphore */
		hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_MAC_CSR_SM);
		/*
		 * Delay obtaining semaphore again to allow FW access,
		 * semaphore_delay is in ms usleep_range needs us.
		 */
		FUNC12(hw->eeprom.semaphore_delay * 1000,
			     hw->eeprom.semaphore_delay * 2000);

		/* Restart DSP and set SFI mode */
		ret_val = hw->mac.ops.prot_autoc_write(hw,
			hw->mac.orig_autoc | IXGBE_AUTOC_LMS_10G_SERIAL,
			false);

		if (ret_val) {
			FUNC2(hw, " sfp module setup not complete\n");
			return IXGBE_ERR_SFP_SETUP_NOT_COMPLETE;
		}
	}

	return 0;

setup_sfp_err:
	/* Release the semaphore */
	hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_MAC_CSR_SM);
	/* Delay obtaining semaphore again to allow FW access,
	 * semaphore_delay is in ms usleep_range needs us.
	 */
	FUNC12(hw->eeprom.semaphore_delay * 1000,
		     hw->eeprom.semaphore_delay * 2000);
	FUNC3(hw, "eeprom read at offset %d failed\n", data_offset);
	return IXGBE_ERR_SFP_SETUP_NOT_COMPLETE;
}