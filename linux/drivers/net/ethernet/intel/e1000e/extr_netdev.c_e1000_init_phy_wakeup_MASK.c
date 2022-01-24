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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_5__ {int (* acquire ) (struct e1000_hw*) ;int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;int /*<<< orphan*/  (* write_reg_page ) (struct e1000_hw*,scalar_t__,scalar_t__) ;int /*<<< orphan*/  (* read_reg_page ) (struct e1000_hw*,scalar_t__,scalar_t__*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ mta_reg_count; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
struct e1000_adapter {struct e1000_hw hw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ BM_RCTL ; 
 scalar_t__ BM_RCTL_BAM ; 
 scalar_t__ BM_RCTL_MO_MASK ; 
 scalar_t__ BM_RCTL_MO_SHIFT ; 
 scalar_t__ BM_RCTL_MPE ; 
 scalar_t__ BM_RCTL_PMCF ; 
 scalar_t__ BM_RCTL_RFCE ; 
 scalar_t__ BM_RCTL_UPE ; 
 scalar_t__ BM_WUC ; 
 scalar_t__ BM_WUC_ENABLE_BIT ; 
 scalar_t__ BM_WUC_HOST_WU_BIT ; 
 scalar_t__ BM_WUFC ; 
 int /*<<< orphan*/  CTRL ; 
 scalar_t__ E1000_CTRL_RFCE ; 
 int /*<<< orphan*/  E1000_MTA ; 
 scalar_t__ E1000_RCTL_BAM ; 
 scalar_t__ E1000_RCTL_MO_3 ; 
 scalar_t__ E1000_RCTL_MO_SHIFT ; 
 scalar_t__ E1000_RCTL_MPE ; 
 scalar_t__ E1000_RCTL_PMCF ; 
 scalar_t__ E1000_RCTL_UPE ; 
 scalar_t__ FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ E1000_WUC_APME ; 
 scalar_t__ E1000_WUC_APMPME ; 
 scalar_t__ E1000_WUC_PHY_WAKE ; 
 scalar_t__ E1000_WUC_PME_EN ; 
 scalar_t__ E1000_WUC_PME_STATUS ; 
 scalar_t__ E1000_WUFC_LNKC ; 
 scalar_t__ E1000_WUFC_MAG ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  WUC ; 
 int /*<<< orphan*/  WUFC ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 int FUNC3 (struct e1000_hw*,scalar_t__*) ; 
 int FUNC4 (struct e1000_hw*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct e1000_hw*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct e1000_hw*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct e1000_hw*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (struct e1000_hw*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct e1000_hw*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct e1000_hw*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct e1000_hw*) ; 

__attribute__((used)) static int FUNC16(struct e1000_adapter *adapter, u32 wufc)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 i, mac_reg, wuc;
	u16 phy_reg, wuc_enable;
	int retval;

	/* copy MAC RARs to PHY RARs */
	FUNC2(hw);

	retval = hw->phy.ops.acquire(hw);
	if (retval) {
		FUNC5("Could not acquire PHY\n");
		return retval;
	}

	/* Enable access to wakeup registers on and set page to BM_WUC_PAGE */
	retval = FUNC4(hw, &wuc_enable);
	if (retval)
		goto release;

	/* copy MAC MTA to PHY MTA - only needed for pchlan */
	for (i = 0; i < adapter->hw.mac.mta_reg_count; i++) {
		mac_reg = FUNC1(hw, E1000_MTA, i);
		hw->phy.ops.write_reg_page(hw, FUNC0(i),
					   (u16)(mac_reg & 0xFFFF));
		hw->phy.ops.write_reg_page(hw, FUNC0(i) + 1,
					   (u16)((mac_reg >> 16) & 0xFFFF));
	}

	/* configure PHY Rx Control register */
	hw->phy.ops.read_reg_page(&adapter->hw, BM_RCTL, &phy_reg);
	mac_reg = FUNC6(RCTL);
	if (mac_reg & E1000_RCTL_UPE)
		phy_reg |= BM_RCTL_UPE;
	if (mac_reg & E1000_RCTL_MPE)
		phy_reg |= BM_RCTL_MPE;
	phy_reg &= ~(BM_RCTL_MO_MASK);
	if (mac_reg & E1000_RCTL_MO_3)
		phy_reg |= (((mac_reg & E1000_RCTL_MO_3) >> E1000_RCTL_MO_SHIFT)
			    << BM_RCTL_MO_SHIFT);
	if (mac_reg & E1000_RCTL_BAM)
		phy_reg |= BM_RCTL_BAM;
	if (mac_reg & E1000_RCTL_PMCF)
		phy_reg |= BM_RCTL_PMCF;
	mac_reg = FUNC6(CTRL);
	if (mac_reg & E1000_CTRL_RFCE)
		phy_reg |= BM_RCTL_RFCE;
	hw->phy.ops.write_reg_page(&adapter->hw, BM_RCTL, phy_reg);

	wuc = E1000_WUC_PME_EN;
	if (wufc & (E1000_WUFC_MAG | E1000_WUFC_LNKC))
		wuc |= E1000_WUC_APME;

	/* enable PHY wakeup in MAC register */
	FUNC7(WUFC, wufc);
	FUNC7(WUC, (E1000_WUC_PHY_WAKE | E1000_WUC_APMPME |
		   E1000_WUC_PME_STATUS | wuc));

	/* configure and enable PHY wakeup in PHY registers */
	hw->phy.ops.write_reg_page(&adapter->hw, BM_WUFC, wufc);
	hw->phy.ops.write_reg_page(&adapter->hw, BM_WUC, wuc);

	/* activate PHY wakeup */
	wuc_enable |= BM_WUC_ENABLE_BIT | BM_WUC_HOST_WU_BIT;
	retval = FUNC3(hw, &wuc_enable);
	if (retval)
		FUNC5("Could not set PHY Host Wakeup bit\n");
release:
	hw->phy.ops.release(hw);

	return retval;
}