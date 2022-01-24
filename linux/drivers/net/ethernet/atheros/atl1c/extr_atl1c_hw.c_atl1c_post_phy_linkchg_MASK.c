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
typedef  scalar_t__ u16 ;
struct atl1c_hw {scalar_t__ nic_type; scalar_t__ msi_lnkpatch; } ;

/* Variables and functions */
 scalar_t__ AZ_ANADECT_DEF ; 
 scalar_t__ AZ_ANADECT_LONG ; 
 int /*<<< orphan*/  CLDCTRL6_CAB_LEN ; 
 scalar_t__ CLDCTRL6_CAB_LEN_SHORT ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ L1D_MSE16DB_DOWN ; 
 scalar_t__ L1D_MSE16DB_UP ; 
 scalar_t__ L1D_SYSMODCTRL_IECHOADJ_DEF ; 
 int /*<<< orphan*/  MIIDBG_AZ_ANADECT ; 
 int /*<<< orphan*/  MIIDBG_MSE16DB ; 
 int /*<<< orphan*/  MIIDBG_SYSMODCTRL ; 
 int /*<<< orphan*/  MIIEXT_CLDCTRL6 ; 
 int /*<<< orphan*/  MIIEXT_PCS ; 
 scalar_t__ SPEED_0 ; 
 scalar_t__ SPEED_100 ; 
 scalar_t__ SYSMODCTRL_IECHOADJ_DEF ; 
 scalar_t__ athr_l1d ; 
 scalar_t__ athr_l1d_2 ; 
 scalar_t__ athr_l2c_b ; 
 scalar_t__ athr_l2c_b2 ; 
 int /*<<< orphan*/  FUNC1 (struct atl1c_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct atl1c_hw*,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC3(struct atl1c_hw *hw, u16 link_speed)
{
	u16 phy_val;
	bool adj_thresh = false;

	if (hw->nic_type == athr_l2c_b || hw->nic_type == athr_l2c_b2 ||
	    hw->nic_type == athr_l1d || hw->nic_type == athr_l1d_2)
		adj_thresh = true;

	if (link_speed != SPEED_0) { /* link up */
		/* az with brcm, half-amp */
		if (hw->nic_type == athr_l1d_2) {
			FUNC1(hw, MIIEXT_PCS, MIIEXT_CLDCTRL6,
				&phy_val);
			phy_val = FUNC0(phy_val, CLDCTRL6_CAB_LEN);
			phy_val = phy_val > CLDCTRL6_CAB_LEN_SHORT ?
				AZ_ANADECT_LONG : AZ_ANADECT_DEF;
			FUNC2(hw, MIIDBG_AZ_ANADECT, phy_val);
		}
		/* threshold adjust */
		if (adj_thresh && link_speed == SPEED_100 && hw->msi_lnkpatch) {
			FUNC2(hw, MIIDBG_MSE16DB, L1D_MSE16DB_UP);
			FUNC2(hw, MIIDBG_SYSMODCTRL,
				L1D_SYSMODCTRL_IECHOADJ_DEF);
		}
	} else { /* link down */
		if (adj_thresh && hw->msi_lnkpatch) {
			FUNC2(hw, MIIDBG_SYSMODCTRL,
				SYSMODCTRL_IECHOADJ_DEF);
			FUNC2(hw, MIIDBG_MSE16DB,
				L1D_MSE16DB_DOWN);
		}
	}
}