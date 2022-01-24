#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_10__ {scalar_t__ type; } ;
struct TYPE_8__ {scalar_t__ (* get_cfg_done ) (struct e1000_hw*) ;int /*<<< orphan*/  (* check_reset_block ) (struct e1000_hw*) ;} ;
struct TYPE_9__ {TYPE_3__ ops; } ;
struct e1000_dev_spec_ich8lan {int nvm_k1_enabled; } ;
struct TYPE_6__ {struct e1000_dev_spec_ich8lan ich8lan; } ;
struct e1000_hw {TYPE_5__ mac; TYPE_4__ phy; TYPE_2__* adapter; TYPE_1__ dev_spec; } ;
typedef  scalar_t__ s32 ;
struct TYPE_7__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRC_OFFSET ; 
 int /*<<< orphan*/  CTRL ; 
 int E1000_CTRL_PHY_RST ; 
 int E1000_CTRL_RST ; 
 int E1000_FEXTNVM3_PHY_CFG_COUNTER_50MSEC ; 
 int E1000_FEXTNVM3_PHY_CFG_COUNTER_MASK ; 
 int E1000_ICH_FWSM_FW_VALID ; 
 int E1000_KABGTXD_BGSQLBIAS ; 
 int /*<<< orphan*/  E1000_NVM_K1_CONFIG ; 
 int E1000_NVM_K1_ENABLE ; 
 int E1000_PBA_8K ; 
 int E1000_PBS_16K ; 
 int E1000_TCTL_PSP ; 
 int /*<<< orphan*/  FEXTNVM3 ; 
 int /*<<< orphan*/  FWSM ; 
 int /*<<< orphan*/  ICR ; 
 int /*<<< orphan*/  IMC ; 
 int /*<<< orphan*/  KABGTXD ; 
 int /*<<< orphan*/  PBA ; 
 int /*<<< orphan*/  PBS ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  TCTL ; 
 int /*<<< orphan*/  __E1000_ACCESS_SHARED_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int) ; 
 scalar_t__ e1000_ich8lan ; 
 scalar_t__ e1000_pch2lan ; 
 scalar_t__ e1000_pchlan ; 
 scalar_t__ FUNC3 (struct e1000_hw*) ; 
 scalar_t__ FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct e1000_hw*) ; 
 scalar_t__ FUNC12 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

__attribute__((used)) static s32 FUNC14(struct e1000_hw *hw)
{
	struct e1000_dev_spec_ich8lan *dev_spec = &hw->dev_spec.ich8lan;
	u16 kum_cfg;
	u32 ctrl, reg;
	s32 ret_val;

	/* Prevent the PCI-E bus from sticking if there is no TLP connection
	 * on the last TLP read/write transaction when MAC is reset.
	 */
	ret_val = FUNC5(hw);
	if (ret_val)
		FUNC7("PCI-E Master disable polling has failed.\n");

	FUNC7("Masking off all interrupts\n");
	FUNC9(IMC, 0xffffffff);

	/* Disable the Transmit and Receive units.  Then delay to allow
	 * any pending transactions to complete before we hit the MAC
	 * with the global reset.
	 */
	FUNC9(RCTL, 0);
	FUNC9(TCTL, E1000_TCTL_PSP);
	FUNC6();

	FUNC13(10000, 11000);

	/* Workaround for ICH8 bit corruption issue in FIFO memory */
	if (hw->mac.type == e1000_ich8lan) {
		/* Set Tx and Rx buffer allocation to 8k apiece. */
		FUNC9(PBA, E1000_PBA_8K);
		/* Set Packet Buffer Size to 16k. */
		FUNC9(PBS, E1000_PBS_16K);
	}

	if (hw->mac.type == e1000_pchlan) {
		/* Save the NVM K1 bit setting */
		ret_val = FUNC4(hw, E1000_NVM_K1_CONFIG, 1, &kum_cfg);
		if (ret_val)
			return ret_val;

		if (kum_cfg & E1000_NVM_K1_ENABLE)
			dev_spec->nvm_k1_enabled = true;
		else
			dev_spec->nvm_k1_enabled = false;
	}

	ctrl = FUNC8(CTRL);

	if (!hw->phy.ops.check_reset_block(hw)) {
		/* Full-chip reset requires MAC and PHY reset at the same
		 * time to make sure the interface between MAC and the
		 * external PHY is reset.
		 */
		ctrl |= E1000_CTRL_PHY_RST;

		/* Gate automatic PHY configuration by hardware on
		 * non-managed 82579
		 */
		if ((hw->mac.type == e1000_pch2lan) &&
		    !(FUNC8(FWSM) & E1000_ICH_FWSM_FW_VALID))
			FUNC2(hw, true);
	}
	ret_val = FUNC1(hw);
	FUNC7("Issuing a global reset to ich8lan\n");
	FUNC9(CTRL, (ctrl | E1000_CTRL_RST));
	/* cannot issue a flush here because it hangs the hardware */
	FUNC10(20);

	/* Set Phy Config Counter to 50msec */
	if (hw->mac.type == e1000_pch2lan) {
		reg = FUNC8(FEXTNVM3);
		reg &= ~E1000_FEXTNVM3_PHY_CFG_COUNTER_MASK;
		reg |= E1000_FEXTNVM3_PHY_CFG_COUNTER_50MSEC;
		FUNC9(FEXTNVM3, reg);
	}

	if (!ret_val)
		FUNC0(__E1000_ACCESS_SHARED_RESOURCE, &hw->adapter->state);

	if (ctrl & E1000_CTRL_PHY_RST) {
		ret_val = hw->phy.ops.get_cfg_done(hw);
		if (ret_val)
			return ret_val;

		ret_val = FUNC3(hw);
		if (ret_val)
			return ret_val;
	}

	/* For PCH, this write will make sure that any noise
	 * will be detected as a CRC error and be dropped rather than show up
	 * as a bad packet to the DMA engine.
	 */
	if (hw->mac.type == e1000_pchlan)
		FUNC9(CRC_OFFSET, 0x65656565);

	FUNC9(IMC, 0xffffffff);
	FUNC8(ICR);

	reg = FUNC8(KABGTXD);
	reg |= E1000_KABGTXD_BGSQLBIAS;
	FUNC9(KABGTXD, reg);

	return 0;
}