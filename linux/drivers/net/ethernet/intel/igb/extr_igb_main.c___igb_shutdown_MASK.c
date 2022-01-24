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
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int wol; scalar_t__ en_mng_pt; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_CTRL ; 
 int E1000_CTRL_ADVD3WUC ; 
 int /*<<< orphan*/  E1000_RCTL ; 
 int E1000_RCTL_MPE ; 
 int /*<<< orphan*/  E1000_STATUS ; 
 int E1000_STATUS_LU ; 
 int /*<<< orphan*/  E1000_WUC ; 
 int E1000_WUC_PME_EN ; 
 int /*<<< orphan*/  E1000_WUFC ; 
 int E1000_WUFC_LNKC ; 
 int E1000_WUFC_MC ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct igb_adapter*) ; 
 struct igb_adapter* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 scalar_t__ FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 struct net_device* FUNC13 (struct pci_dev*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC18(struct pci_dev *pdev, bool *enable_wake,
			  bool runtime)
{
	struct net_device *netdev = FUNC13(pdev);
	struct igb_adapter *adapter = FUNC9(netdev);
	struct e1000_hw *hw = &adapter->hw;
	u32 ctrl, rctl, status;
	u32 wufc = runtime ? E1000_WUFC_LNKC : adapter->wol;
	bool wake;

	FUNC15();
	FUNC10(netdev);

	if (FUNC11(netdev))
		FUNC0(netdev, true);

	FUNC5(adapter);

	FUNC1(adapter);
	FUNC16();

	status = FUNC14(E1000_STATUS);
	if (status & E1000_STATUS_LU)
		wufc &= ~E1000_WUFC_LNKC;

	if (wufc) {
		FUNC8(adapter);
		FUNC7(netdev);

		/* turn on all-multi mode if wake on multicast is enabled */
		if (wufc & E1000_WUFC_MC) {
			rctl = FUNC14(E1000_RCTL);
			rctl |= E1000_RCTL_MPE;
			FUNC17(E1000_RCTL, rctl);
		}

		ctrl = FUNC14(E1000_CTRL);
		ctrl |= E1000_CTRL_ADVD3WUC;
		FUNC17(E1000_CTRL, ctrl);

		/* Allow time for pending master requests to run */
		FUNC2(hw);

		FUNC17(E1000_WUC, E1000_WUC_PME_EN);
		FUNC17(E1000_WUFC, wufc);
	} else {
		FUNC17(E1000_WUC, 0);
		FUNC17(E1000_WUFC, 0);
	}

	wake = wufc || adapter->en_mng_pt;
	if (!wake)
		FUNC3(adapter);
	else
		FUNC4(adapter);

	if (enable_wake)
		*enable_wake = wake;

	/* Release control of h/w to f/w.  If f/w is AMT enabled, this
	 * would have already happened in close and is redundant.
	 */
	FUNC6(adapter);

	FUNC12(pdev);

	return 0;
}