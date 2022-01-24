#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_13__ {scalar_t__ ulp_state; } ;
struct TYPE_14__ {TYPE_6__ ich8lan; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;int /*<<< orphan*/  (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_12__ {scalar_t__ type; int revision; TYPE_4__ ops; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_7__ dev_spec; TYPE_5__ phy; TYPE_3__* adapter; TYPE_1__ mac; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_10__ {TYPE_2__* pdev; } ;
struct TYPE_9__ {scalar_t__ device; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_EXT ; 
 int /*<<< orphan*/  CV_SMB_CTRL ; 
 int CV_SMB_CTRL_FORCE_SMBUS ; 
 int E1000_CTRL_EXT_FORCE_SMBUS ; 
 scalar_t__ E1000_DEV_ID_PCH_I218_LM2 ; 
 scalar_t__ E1000_DEV_ID_PCH_I218_V2 ; 
 scalar_t__ E1000_DEV_ID_PCH_LPT_I217_LM ; 
 scalar_t__ E1000_DEV_ID_PCH_LPT_I217_V ; 
 int /*<<< orphan*/  E1000_ERR_PHY ; 
 int E1000_FEXTNVM7_DISABLE_SMB_PERST ; 
 int E1000_FEXT_PHY_CABLE_DISCONNECTED ; 
 int E1000_H2ME_ENFORCE_SETTINGS ; 
 int E1000_H2ME_ULP ; 
 int E1000_ICH_FWSM_FW_VALID ; 
 int E1000_STATUS_LU ; 
 int E1000_WUFC_LNKC ; 
 int /*<<< orphan*/  FEXT ; 
 int /*<<< orphan*/  FEXTNVM7 ; 
 int /*<<< orphan*/  FWSM ; 
 int /*<<< orphan*/  H2ME ; 
 int /*<<< orphan*/  HV_OEM_BITS ; 
 int HV_OEM_BITS_GBE_DIS ; 
 int HV_OEM_BITS_LPLU ; 
 int /*<<< orphan*/  I218_ULP_CONFIG1 ; 
 int I218_ULP_CONFIG1_DISABLE_SMB_PERST ; 
 int I218_ULP_CONFIG1_INBAND_EXIT ; 
 int I218_ULP_CONFIG1_RESET_TO_SMBUS ; 
 int I218_ULP_CONFIG1_START ; 
 int I218_ULP_CONFIG1_STICKY_ULP ; 
 int I218_ULP_CONFIG1_WOL_HOST ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  WUFC ; 
 scalar_t__ e1000_pch_lpt ; 
 scalar_t__ e1000_phy_i217 ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ e1000_ulp_state_on ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_hw*) ; 

s32 FUNC8(struct e1000_hw *hw, bool to_sx)
{
	u32 mac_reg;
	s32 ret_val = 0;
	u16 phy_reg;
	u16 oem_reg = 0;

	if ((hw->mac.type < e1000_pch_lpt) ||
	    (hw->adapter->pdev->device == E1000_DEV_ID_PCH_LPT_I217_LM) ||
	    (hw->adapter->pdev->device == E1000_DEV_ID_PCH_LPT_I217_V) ||
	    (hw->adapter->pdev->device == E1000_DEV_ID_PCH_I218_LM2) ||
	    (hw->adapter->pdev->device == E1000_DEV_ID_PCH_I218_V2) ||
	    (hw->dev_spec.ich8lan.ulp_state == e1000_ulp_state_on))
		return 0;

	if (FUNC3(FWSM) & E1000_ICH_FWSM_FW_VALID) {
		/* Request ME configure ULP mode in the PHY */
		mac_reg = FUNC3(H2ME);
		mac_reg |= E1000_H2ME_ULP | E1000_H2ME_ENFORCE_SETTINGS;
		FUNC4(H2ME, mac_reg);

		goto out;
	}

	if (!to_sx) {
		int i = 0;

		/* Poll up to 5 seconds for Cable Disconnected indication */
		while (!(FUNC3(FEXT) & E1000_FEXT_PHY_CABLE_DISCONNECTED)) {
			/* Bail if link is re-acquired */
			if (FUNC3(STATUS) & E1000_STATUS_LU)
				return -E1000_ERR_PHY;

			if (i++ == 100)
				break;

			FUNC5(50);
		}
		FUNC2("CABLE_DISCONNECTED %s set after %dmsec\n",
		      (FUNC3(FEXT) &
		       E1000_FEXT_PHY_CABLE_DISCONNECTED) ? "" : "not", i * 50);
	}

	ret_val = hw->phy.ops.acquire(hw);
	if (ret_val)
		goto out;

	/* Force SMBus mode in PHY */
	ret_val = FUNC0(hw, CV_SMB_CTRL, &phy_reg);
	if (ret_val)
		goto release;
	phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
	FUNC1(hw, CV_SMB_CTRL, phy_reg);

	/* Force SMBus mode in MAC */
	mac_reg = FUNC3(CTRL_EXT);
	mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
	FUNC4(CTRL_EXT, mac_reg);

	/* Si workaround for ULP entry flow on i127/rev6 h/w.  Enable
	 * LPLU and disable Gig speed when entering ULP
	 */
	if ((hw->phy.type == e1000_phy_i217) && (hw->phy.revision == 6)) {
		ret_val = FUNC0(hw, HV_OEM_BITS,
						       &oem_reg);
		if (ret_val)
			goto release;

		phy_reg = oem_reg;
		phy_reg |= HV_OEM_BITS_LPLU | HV_OEM_BITS_GBE_DIS;

		ret_val = FUNC1(hw, HV_OEM_BITS,
							phy_reg);

		if (ret_val)
			goto release;
	}

	/* Set Inband ULP Exit, Reset to SMBus mode and
	 * Disable SMBus Release on PERST# in PHY
	 */
	ret_val = FUNC0(hw, I218_ULP_CONFIG1, &phy_reg);
	if (ret_val)
		goto release;
	phy_reg |= (I218_ULP_CONFIG1_RESET_TO_SMBUS |
		    I218_ULP_CONFIG1_DISABLE_SMB_PERST);
	if (to_sx) {
		if (FUNC3(WUFC) & E1000_WUFC_LNKC)
			phy_reg |= I218_ULP_CONFIG1_WOL_HOST;
		else
			phy_reg &= ~I218_ULP_CONFIG1_WOL_HOST;

		phy_reg |= I218_ULP_CONFIG1_STICKY_ULP;
		phy_reg &= ~I218_ULP_CONFIG1_INBAND_EXIT;
	} else {
		phy_reg |= I218_ULP_CONFIG1_INBAND_EXIT;
		phy_reg &= ~I218_ULP_CONFIG1_STICKY_ULP;
		phy_reg &= ~I218_ULP_CONFIG1_WOL_HOST;
	}
	FUNC1(hw, I218_ULP_CONFIG1, phy_reg);

	/* Set Disable SMBus Release on PERST# in MAC */
	mac_reg = FUNC3(FEXTNVM7);
	mac_reg |= E1000_FEXTNVM7_DISABLE_SMB_PERST;
	FUNC4(FEXTNVM7, mac_reg);

	/* Commit ULP changes in PHY by starting auto ULP configuration */
	phy_reg |= I218_ULP_CONFIG1_START;
	FUNC1(hw, I218_ULP_CONFIG1, phy_reg);

	if ((hw->phy.type == e1000_phy_i217) && (hw->phy.revision == 6) &&
	    to_sx && (FUNC3(STATUS) & E1000_STATUS_LU)) {
		ret_val = FUNC1(hw, HV_OEM_BITS,
							oem_reg);
		if (ret_val)
			goto release;
	}

release:
	hw->phy.ops.release(hw);
out:
	if (ret_val)
		FUNC2("Error in ULP enable flow: %d\n", ret_val);
	else
		hw->dev_spec.ich8lan.ulp_state = e1000_ulp_state_on;

	return ret_val;
}