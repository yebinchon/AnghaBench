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
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct net_device {int /*<<< orphan*/  features; } ;
struct atl1e_hw {int phy_configured; scalar_t__ preamble_len; } ;
struct atl1e_adapter {int wol; int /*<<< orphan*/  netdev; struct atl1e_hw hw; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int ADVERTISE_10HALF ; 
 int FUNC0 (struct atl1e_hw*,int /*<<< orphan*/ ) ; 
 int AT_SUSPEND_LINK_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct atl1e_hw*,int /*<<< orphan*/ ,int) ; 
 int AT_WUFC_LNKC ; 
 int AT_WUFC_MAG ; 
 int BMSR_LSTATUS ; 
 int MAC_CTRL_BC_EN ; 
 int MAC_CTRL_PRMLEN_MASK ; 
 int MAC_CTRL_PRMLEN_SHIFT ; 
 int MAC_CTRL_RX_EN ; 
 int MAC_CTRL_SPEED_10_100 ; 
 int MAC_CTRL_SPEED_SHIFT ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_BMSR ; 
 int /*<<< orphan*/  MII_CTRL1000 ; 
 int /*<<< orphan*/  MII_INT_CTRL ; 
 int /*<<< orphan*/  MII_INT_STATUS ; 
 int PCIE_PHYMISC_FORCE_RCV_DET ; 
 int /*<<< orphan*/  REG_MAC_CTRL ; 
 int /*<<< orphan*/  REG_PCIE_PHYMISC ; 
 int /*<<< orphan*/  REG_WOL_CTRL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int WOL_LINK_CHG_EN ; 
 int WOL_LINK_CHG_PME_EN ; 
 int WOL_MAGIC_EN ; 
 int WOL_MAGIC_PME_EN ; 
 int /*<<< orphan*/  __AT_RESETTING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct atl1e_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct atl1e_adapter*) ; 
 scalar_t__ FUNC7 (struct atl1e_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct atl1e_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC9 (struct atl1e_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 struct atl1e_adapter* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 scalar_t__ FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 struct net_device* FUNC18 (struct pci_dev*) ; 
 int FUNC19 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct pci_dev *pdev, pm_message_t state)
{
	struct net_device *netdev = FUNC18(pdev);
	struct atl1e_adapter *adapter = FUNC12(netdev);
	struct atl1e_hw *hw = &adapter->hw;
	u32 ctrl = 0;
	u32 mac_ctrl_data = 0;
	u32 wol_ctrl_data = 0;
	u16 mii_advertise_data = 0;
	u16 mii_bmsr_data = 0;
	u16 mii_intr_status_data = 0;
	u32 wufc = adapter->wol;
	u32 i;
#ifdef CONFIG_PM
	int retval = 0;
#endif

	if (FUNC14(netdev)) {
		FUNC2(FUNC21(__AT_RESETTING, &adapter->flags));
		FUNC4(adapter);
	}
	FUNC13(netdev);

#ifdef CONFIG_PM
	retval = pci_save_state(pdev);
	if (retval)
		return retval;
#endif

	if (wufc) {
		/* get link status */
		FUNC8(hw, MII_BMSR, &mii_bmsr_data);
		FUNC8(hw, MII_BMSR, &mii_bmsr_data);

		mii_advertise_data = ADVERTISE_10HALF;

		if ((FUNC9(hw, MII_CTRL1000, 0) != 0) ||
		    (FUNC9(hw,
			   MII_ADVERTISE, mii_advertise_data) != 0) ||
		    (FUNC7(hw)) != 0) {
			FUNC11(adapter->netdev, "set phy register failed\n");
			goto wol_dis;
		}

		hw->phy_configured = false; /* re-init PHY when resume */

		/* turn on magic packet wol */
		if (wufc & AT_WUFC_MAG)
			wol_ctrl_data |= WOL_MAGIC_EN | WOL_MAGIC_PME_EN;

		if (wufc & AT_WUFC_LNKC) {
		/* if orignal link status is link, just wait for retrive link */
			if (mii_bmsr_data & BMSR_LSTATUS) {
				for (i = 0; i < AT_SUSPEND_LINK_TIMEOUT; i++) {
					FUNC10(100);
					FUNC8(hw, MII_BMSR,
							&mii_bmsr_data);
					if (mii_bmsr_data & BMSR_LSTATUS)
						break;
				}

				if ((mii_bmsr_data & BMSR_LSTATUS) == 0)
					FUNC11(adapter->netdev,
						   "Link may change when suspend\n");
			}
			wol_ctrl_data |=  WOL_LINK_CHG_EN | WOL_LINK_CHG_PME_EN;
			/* only link up can wake up */
			if (FUNC9(hw, MII_INT_CTRL, 0x400) != 0) {
				FUNC11(adapter->netdev,
					   "read write phy register failed\n");
				goto wol_dis;
			}
		}
		/* clear phy interrupt */
		FUNC8(hw, MII_INT_STATUS, &mii_intr_status_data);
		/* Config MAC Ctrl register */
		mac_ctrl_data = MAC_CTRL_RX_EN;
		/* set to 10/100M halt duplex */
		mac_ctrl_data |= MAC_CTRL_SPEED_10_100 << MAC_CTRL_SPEED_SHIFT;
		mac_ctrl_data |= (((u32)adapter->hw.preamble_len &
				 MAC_CTRL_PRMLEN_MASK) <<
				 MAC_CTRL_PRMLEN_SHIFT);

		FUNC3(netdev->features, &mac_ctrl_data);

		/* magic packet maybe Broadcast&multicast&Unicast frame */
		if (wufc & AT_WUFC_MAG)
			mac_ctrl_data |= MAC_CTRL_BC_EN;

		FUNC11(adapter->netdev, "suspend MAC=0x%x\n",
			   mac_ctrl_data);

		FUNC1(hw, REG_WOL_CTRL, wol_ctrl_data);
		FUNC1(hw, REG_MAC_CTRL, mac_ctrl_data);
		/* pcie patch */
		ctrl = FUNC0(hw, REG_PCIE_PHYMISC);
		ctrl |= PCIE_PHYMISC_FORCE_RCV_DET;
		FUNC1(hw, REG_PCIE_PHYMISC, ctrl);
		FUNC17(pdev, FUNC15(pdev, state), 1);
		goto suspend_exit;
	}
wol_dis:

	/* WOL disabled */
	FUNC1(hw, REG_WOL_CTRL, 0);

	/* pcie patch */
	ctrl = FUNC0(hw, REG_PCIE_PHYMISC);
	ctrl |= PCIE_PHYMISC_FORCE_RCV_DET;
	FUNC1(hw, REG_PCIE_PHYMISC, ctrl);

	FUNC5(hw);
	hw->phy_configured = false; /* re-init PHY when resume */

	FUNC17(pdev, FUNC15(pdev, state), 0);

suspend_exit:

	if (FUNC14(netdev))
		FUNC6(adapter);

	FUNC16(pdev);

	FUNC20(pdev, FUNC15(pdev, state));

	return 0;
}