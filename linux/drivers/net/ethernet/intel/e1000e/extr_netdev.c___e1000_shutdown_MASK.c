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
typedef  int u32 ;
typedef  int u16 ;
struct pci_dev {TYPE_6__* bus; } ;
struct net_device {int dummy; } ;
struct TYPE_10__ {int (* acquire ) (struct e1000_hw*) ;int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;} ;
struct TYPE_11__ {scalar_t__ media_type; scalar_t__ type; TYPE_4__ ops; } ;
struct TYPE_8__ {int eee_lp_ability; } ;
struct TYPE_9__ {TYPE_2__ ich8lan; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_5__ phy; TYPE_3__ dev_spec; TYPE_1__ mac; } ;
struct e1000_adapter {int wol; int flags2; int flags; int eee_advert; struct e1000_hw hw; } ;
struct TYPE_12__ {struct pci_dev* self; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  CTRL_EXT ; 
 int E1000_CTRL_ADVD3WUC ; 
 int E1000_CTRL_EN_PHY_PWR_MGMT ; 
 int E1000_CTRL_EXT_SDP3_DATA ; 
 int E1000_RCTL_MPE ; 
 int E1000_STATUS_LU ; 
 int E1000_WUC_PME_EN ; 
 int E1000_WUFC_BC ; 
 int E1000_WUFC_EX ; 
 int E1000_WUFC_LNKC ; 
 int E1000_WUFC_MC ; 
 int FLAG2_HAS_PHY_WAKEUP ; 
 int FLAG_IS_ICH ; 
 int FLAG_IS_QUAD_PORT ; 
 int I82579_EEE_1000_SUPPORTED ; 
 int I82579_EEE_100_SUPPORTED ; 
 int /*<<< orphan*/  I82579_LPI_CTRL ; 
 int I82579_LPI_CTRL_1000_ENABLE ; 
 int I82579_LPI_CTRL_100_ENABLE ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL ; 
 int PCI_EXP_DEVCTL_CERE ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  WUC ; 
 int /*<<< orphan*/  WUFC ; 
 int FUNC0 (struct e1000_hw*,int) ; 
 int FUNC1 (struct e1000_adapter*,int) ; 
 scalar_t__ e1000_media_type_fiber ; 
 scalar_t__ e1000_media_type_internal_serdes ; 
 scalar_t__ e1000_pch_lpt ; 
 scalar_t__ e1000_phy_i217 ; 
 scalar_t__ e1000_phy_igp_3 ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int FUNC9 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 int FUNC10 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 struct e1000_adapter* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 struct net_device* FUNC15 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC20 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC21 (struct e1000_hw*) ; 

__attribute__((used)) static int FUNC22(struct pci_dev *pdev, bool runtime)
{
	struct net_device *netdev = FUNC15(pdev);
	struct e1000_adapter *adapter = FUNC13(netdev);
	struct e1000_hw *hw = &adapter->hw;
	u32 ctrl, ctrl_ext, rctl, status;
	/* Runtime suspend should only enable wakeup for link changes */
	u32 wufc = runtime ? E1000_WUFC_LNKC : adapter->wol;
	int retval = 0;

	status = FUNC11(STATUS);
	if (status & E1000_STATUS_LU)
		wufc &= ~E1000_WUFC_LNKC;

	if (wufc) {
		FUNC3(adapter);
		FUNC8(netdev);

		/* turn on all-multi mode if wake on multicast is enabled */
		if (wufc & E1000_WUFC_MC) {
			rctl = FUNC11(RCTL);
			rctl |= E1000_RCTL_MPE;
			FUNC12(RCTL, rctl);
		}

		ctrl = FUNC11(CTRL);
		ctrl |= E1000_CTRL_ADVD3WUC;
		if (!(adapter->flags2 & FLAG2_HAS_PHY_WAKEUP))
			ctrl |= E1000_CTRL_EN_PHY_PWR_MGMT;
		FUNC12(CTRL, ctrl);

		if (adapter->hw.phy.media_type == e1000_media_type_fiber ||
		    adapter->hw.phy.media_type ==
		    e1000_media_type_internal_serdes) {
			/* keep the laser running in D3 */
			ctrl_ext = FUNC11(CTRL_EXT);
			ctrl_ext |= E1000_CTRL_EXT_SDP3_DATA;
			FUNC12(CTRL_EXT, ctrl_ext);
		}

		if (!runtime)
			FUNC6(adapter);

		if (adapter->flags & FLAG_IS_ICH)
			FUNC4(&adapter->hw);

		if (adapter->flags2 & FLAG2_HAS_PHY_WAKEUP) {
			/* enable wakeup by the PHY */
			retval = FUNC1(adapter, wufc);
			if (retval)
				return retval;
		} else {
			/* enable wakeup by the MAC */
			FUNC12(WUFC, wufc);
			FUNC12(WUC, E1000_WUC_PME_EN);
		}
	} else {
		FUNC12(WUC, 0);
		FUNC12(WUFC, 0);

		FUNC2(adapter);
	}

	if (adapter->hw.phy.type == e1000_phy_igp_3) {
		FUNC5(&adapter->hw);
	} else if (hw->mac.type >= e1000_pch_lpt) {
		if (!(wufc & (E1000_WUFC_EX | E1000_WUFC_MC | E1000_WUFC_BC)))
			/* ULP does not support wake from unicast, multicast
			 * or broadcast.
			 */
			retval = FUNC0(hw, !runtime);

		if (retval)
			return retval;
	}

	/* Ensure that the appropriate bits are set in LPI_CTRL
	 * for EEE in Sx
	 */
	if ((hw->phy.type >= e1000_phy_i217) &&
	    adapter->eee_advert && hw->dev_spec.ich8lan.eee_lp_ability) {
		u16 lpi_ctrl = 0;

		retval = hw->phy.ops.acquire(hw);
		if (!retval) {
			retval = FUNC9(hw, I82579_LPI_CTRL,
						 &lpi_ctrl);
			if (!retval) {
				if (adapter->eee_advert &
				    hw->dev_spec.ich8lan.eee_lp_ability &
				    I82579_EEE_100_SUPPORTED)
					lpi_ctrl |= I82579_LPI_CTRL_100_ENABLE;
				if (adapter->eee_advert &
				    hw->dev_spec.ich8lan.eee_lp_ability &
				    I82579_EEE_1000_SUPPORTED)
					lpi_ctrl |= I82579_LPI_CTRL_1000_ENABLE;

				retval = FUNC10(hw, I82579_LPI_CTRL,
							 lpi_ctrl);
			}
		}
		hw->phy.ops.release(hw);
	}

	/* Release control of h/w to f/w.  If f/w is AMT enabled, this
	 * would have already happened in close and is redundant.
	 */
	FUNC7(adapter);

	FUNC14(pdev);

	/* The pci-e switch on some quad port adapters will report a
	 * correctable error when the MAC transitions from D0 to D3.  To
	 * prevent this we need to mask off the correctable errors on the
	 * downstream port of the pci-e switch.
	 *
	 * We don't have the associated upstream bridge while assigning
	 * the PCI device into guest. For example, the KVM on power is
	 * one of the cases.
	 */
	if (adapter->flags & FLAG_IS_QUAD_PORT) {
		struct pci_dev *us_dev = pdev->bus->self;
		u16 devctl;

		if (!us_dev)
			return 0;

		FUNC18(us_dev, PCI_EXP_DEVCTL, &devctl);
		FUNC19(us_dev, PCI_EXP_DEVCTL,
					   (devctl & ~PCI_EXP_DEVCTL_CERE));

		FUNC17(pdev);
		FUNC16(pdev);

		FUNC19(us_dev, PCI_EXP_DEVCTL, devctl);
	}

	return 0;
}