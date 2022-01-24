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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct atl1c_hw {int ctrl_flags; scalar_t__ nic_type; struct atl1c_adapter* adapter; } ;
struct atl1c_adapter {struct pci_dev* pdev; } ;

/* Variables and functions */
 int ANACTRL_DEF ; 
 int ATL1C_HIB_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct atl1c_hw*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1c_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct atl1c_hw*,int /*<<< orphan*/ ,int) ; 
 int CABLE1TH_DET_EN ; 
 int CFGLPSPD_RSTCNT_CLK125SW ; 
 int GPHY_CTRL_CLS ; 
 int GPHY_CTRL_EXT_RESET ; 
 int GPHY_CTRL_EXT_RST_TO ; 
 int GPHY_CTRL_GATE_25M_EN ; 
 int GPHY_CTRL_HIB_EN ; 
 int GPHY_CTRL_HIB_PULSE ; 
 int GPHY_CTRL_PHY_IDDQ ; 
 int GPHY_CTRL_PWDOWN_HW ; 
 int GPHY_CTRL_SEL_ANA_RST ; 
 int HIBNEG_PSHIB_EN ; 
 int IER_LINK_DOWN ; 
 int IER_LINK_UP ; 
 int L1C_LEGCYPS_DEF ; 
 int L1D_LEGCYPS_DEF ; 
 int /*<<< orphan*/  L2CB_CLDCTRL3 ; 
 int LEGCYPS_EN ; 
 int LPI_CTRL_EN ; 
 int /*<<< orphan*/  MIIDBG_ANACTRL ; 
 int /*<<< orphan*/  MIIDBG_CABLE1TH_DET ; 
 int /*<<< orphan*/  MIIDBG_CFGLPSPD ; 
 int /*<<< orphan*/  MIIDBG_HIBNEG ; 
 int /*<<< orphan*/  MIIDBG_LEGCYPS ; 
 int /*<<< orphan*/  MIIDBG_SRDSYSMOD ; 
 int /*<<< orphan*/  MIIDBG_SYSMODCTRL ; 
 int /*<<< orphan*/  MIIDBG_TST100BTCFG ; 
 int /*<<< orphan*/  MIIDBG_TST10BTCFG ; 
 int /*<<< orphan*/  MIIDBG_VOLT_CTRL ; 
 int /*<<< orphan*/  MIIEXT_ANEG ; 
 int /*<<< orphan*/  MIIEXT_CLDCTRL3 ; 
 int /*<<< orphan*/  MIIEXT_LOCAL_EEEADV ; 
 int /*<<< orphan*/  MIIEXT_PCS ; 
 int /*<<< orphan*/  MII_IER ; 
 int /*<<< orphan*/  REG_GPHY_CTRL ; 
 int /*<<< orphan*/  REG_LPI_CTRL ; 
 int SRDSYSMOD_DEF ; 
 int SYSMODCTRL_IECHOADJ_DEF ; 
 int TST100BTCFG_DEF ; 
 int TST100BTCFG_LITCH_EN ; 
 int TST10BTCFG_DEF ; 
 int VOLT_CTRL_SWLOWEST ; 
 scalar_t__ athr_l1d ; 
 scalar_t__ athr_l1d_2 ; 
 scalar_t__ athr_l2c_b ; 
 scalar_t__ athr_l2c_b2 ; 
 int /*<<< orphan*/  FUNC3 (struct atl1c_hw*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct atl1c_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct atl1c_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct atl1c_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int FUNC10(struct atl1c_hw *hw)
{
	struct atl1c_adapter *adapter = hw->adapter;
	struct pci_dev *pdev = adapter->pdev;
	u16 phy_data;
	u32 phy_ctrl_data, lpi_ctrl;
	int err;

	/* reset PHY core */
	FUNC0(hw, REG_GPHY_CTRL, &phy_ctrl_data);
	phy_ctrl_data &= ~(GPHY_CTRL_EXT_RESET | GPHY_CTRL_PHY_IDDQ |
		GPHY_CTRL_GATE_25M_EN | GPHY_CTRL_PWDOWN_HW | GPHY_CTRL_CLS);
	phy_ctrl_data |= GPHY_CTRL_SEL_ANA_RST;
	if (!(hw->ctrl_flags & ATL1C_HIB_DISABLE))
		phy_ctrl_data |= (GPHY_CTRL_HIB_EN | GPHY_CTRL_HIB_PULSE);
	else
		phy_ctrl_data &= ~(GPHY_CTRL_HIB_EN | GPHY_CTRL_HIB_PULSE);
	FUNC2(hw, REG_GPHY_CTRL, phy_ctrl_data);
	FUNC1(hw);
	FUNC9(10);
	FUNC2(hw, REG_GPHY_CTRL, phy_ctrl_data | GPHY_CTRL_EXT_RESET);
	FUNC1(hw);
	FUNC9(10 * GPHY_CTRL_EXT_RST_TO);	/* delay 800us */

	/* switch clock */
	if (hw->nic_type == athr_l2c_b) {
		FUNC3(hw, MIIDBG_CFGLPSPD, &phy_data);
		FUNC4(hw, MIIDBG_CFGLPSPD,
			phy_data & ~CFGLPSPD_RSTCNT_CLK125SW);
	}

	/* tx-half amplitude issue fix */
	if (hw->nic_type == athr_l2c_b || hw->nic_type == athr_l2c_b2) {
		FUNC3(hw, MIIDBG_CABLE1TH_DET, &phy_data);
		phy_data |= CABLE1TH_DET_EN;
		FUNC4(hw, MIIDBG_CABLE1TH_DET, phy_data);
	}

	/* clear bit3 of dbgport 3B to lower voltage */
	if (!(hw->ctrl_flags & ATL1C_HIB_DISABLE)) {
		if (hw->nic_type == athr_l2c_b || hw->nic_type == athr_l2c_b2) {
			FUNC3(hw, MIIDBG_VOLT_CTRL, &phy_data);
			phy_data &= ~VOLT_CTRL_SWLOWEST;
			FUNC4(hw, MIIDBG_VOLT_CTRL, phy_data);
		}
		/* power saving config */
		phy_data =
			hw->nic_type == athr_l1d || hw->nic_type == athr_l1d_2 ?
			L1D_LEGCYPS_DEF : L1C_LEGCYPS_DEF;
		FUNC4(hw, MIIDBG_LEGCYPS, phy_data);
		/* hib */
		FUNC4(hw, MIIDBG_SYSMODCTRL,
			SYSMODCTRL_IECHOADJ_DEF);
	} else {
		/* disable pws */
		FUNC3(hw, MIIDBG_LEGCYPS, &phy_data);
		FUNC4(hw, MIIDBG_LEGCYPS,
			phy_data & ~LEGCYPS_EN);
		/* disable hibernate */
		FUNC3(hw, MIIDBG_HIBNEG, &phy_data);
		FUNC4(hw, MIIDBG_HIBNEG,
			phy_data & HIBNEG_PSHIB_EN);
	}
	/* disable AZ(EEE) by default */
	if (hw->nic_type == athr_l1d || hw->nic_type == athr_l1d_2 ||
	    hw->nic_type == athr_l2c_b2) {
		FUNC0(hw, REG_LPI_CTRL, &lpi_ctrl);
		FUNC2(hw, REG_LPI_CTRL, lpi_ctrl & ~LPI_CTRL_EN);
		FUNC5(hw, MIIEXT_ANEG, MIIEXT_LOCAL_EEEADV, 0);
		FUNC5(hw, MIIEXT_PCS, MIIEXT_CLDCTRL3,
			L2CB_CLDCTRL3);
	}

	/* other debug port to set */
	FUNC4(hw, MIIDBG_ANACTRL, ANACTRL_DEF);
	FUNC4(hw, MIIDBG_SRDSYSMOD, SRDSYSMOD_DEF);
	FUNC4(hw, MIIDBG_TST10BTCFG, TST10BTCFG_DEF);
	/* UNH-IOL test issue, set bit7 */
	FUNC4(hw, MIIDBG_TST100BTCFG,
		TST100BTCFG_DEF | TST100BTCFG_LITCH_EN);

	/* set phy interrupt mask */
	phy_data = IER_LINK_UP | IER_LINK_DOWN;
	err = FUNC6(hw, MII_IER, phy_data);
	if (err) {
		if (FUNC8(adapter))
			FUNC7(&pdev->dev,
				"Error enable PHY linkChange Interrupt\n");
		return err;
	}
	return 0;
}