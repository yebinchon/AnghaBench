#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct skge_port {int port; int wol; TYPE_1__* netdev; struct skge_hw* hw; } ;
struct skge_hw {scalar_t__ chip_id; scalar_t__ chip_rev; scalar_t__ regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 scalar_t__ B0_CTST ; 
 scalar_t__ B0_POWER_CTRL ; 
 scalar_t__ B2_GP_IO ; 
 scalar_t__ CHIP_ID_YUKON_LITE ; 
 scalar_t__ CHIP_REV_YU_LITE_A3 ; 
 int CS_RST_CLR ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GMAC_CTRL ; 
 int /*<<< orphan*/  GMAC_LINK_CTRL ; 
 int GMC_RST_CLR ; 
 int GMF_RST_SET ; 
 int GMLC_RST_CLR ; 
 int GM_GPCR_AU_FCT_DIS ; 
 int GM_GPCR_DUP_FULL ; 
 int GM_GPCR_FC_RX_DIS ; 
 int GM_GPCR_FC_TX_DIS ; 
 int GM_GPCR_RX_ENA ; 
 int GM_GPCR_TX_ENA ; 
 int /*<<< orphan*/  GM_GP_CTRL ; 
 int GPC_ANEG_1 ; 
 int GPC_DIS_SLEEP ; 
 int GPC_HWCFG_M_0 ; 
 int GPC_HWCFG_M_1 ; 
 int GPC_HWCFG_M_2 ; 
 int GPC_HWCFG_M_3 ; 
 int GPC_RST_CLR ; 
 int GPC_RST_SET ; 
 int /*<<< orphan*/  GPHY_CTRL ; 
 int GP_DIR_9 ; 
 int GP_IO_9 ; 
 int PC_VAUX_ENA ; 
 int PC_VAUX_ON ; 
 int PC_VCC_ENA ; 
 int PC_VCC_OFF ; 
 int PHY_AN_100FULL ; 
 int PHY_AN_100HALF ; 
 int PHY_AN_10FULL ; 
 int PHY_AN_10HALF ; 
 int PHY_AN_CSMA ; 
 int PHY_CT_ANE ; 
 int PHY_CT_DUP_MD ; 
 int PHY_CT_RESET ; 
 int PHY_CT_RE_CFG ; 
 int PHY_CT_SPS_LSB ; 
 int /*<<< orphan*/  PHY_MARV_1000T_CTRL ; 
 int /*<<< orphan*/  PHY_MARV_AUNE_ADV ; 
 int /*<<< orphan*/  PHY_MARV_CTRL ; 
 int /*<<< orphan*/  RX_GMF_CTRL_T ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int WAKE_MAGIC ; 
 int WAKE_PHY ; 
 int WOL_CTL_CLEAR_RESULT ; 
 int WOL_CTL_DIS_LINK_CHG_UNIT ; 
 int WOL_CTL_DIS_MAGIC_PKT_UNIT ; 
 int WOL_CTL_DIS_PATTERN_UNIT ; 
 int WOL_CTL_DIS_PME_ON_LINK_CHG ; 
 int WOL_CTL_DIS_PME_ON_MAGIC_PKT ; 
 int WOL_CTL_DIS_PME_ON_PATTERN ; 
 int WOL_CTL_ENA_LINK_CHG_UNIT ; 
 int WOL_CTL_ENA_MAGIC_PKT_UNIT ; 
 int WOL_CTL_ENA_PME_ON_LINK_CHG ; 
 int WOL_CTL_ENA_PME_ON_MAGIC_PKT ; 
 int /*<<< orphan*/  WOL_CTRL_STAT ; 
 int /*<<< orphan*/  WOL_MAC_ADDR ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct skge_hw*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct skge_hw*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct skge_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct skge_hw*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct skge_hw*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct skge_hw*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC9(struct skge_port *skge)
{
	struct skge_hw *hw = skge->hw;
	int port = skge->port;
	u16 ctrl;

	FUNC6(hw, B0_CTST, CS_RST_CLR);
	FUNC6(hw, FUNC0(port, GMAC_LINK_CTRL), GMLC_RST_CLR);

	/* Turn on Vaux */
	FUNC8(hw, B0_POWER_CTRL,
		    PC_VAUX_ENA | PC_VCC_ENA | PC_VAUX_ON | PC_VCC_OFF);

	/* WA code for COMA mode -- clear PHY reset */
	if (hw->chip_id == CHIP_ID_YUKON_LITE &&
	    hw->chip_rev >= CHIP_REV_YU_LITE_A3) {
		u32 reg = FUNC5(hw, B2_GP_IO);
		reg |= GP_DIR_9;
		reg &= ~GP_IO_9;
		FUNC7(hw, B2_GP_IO, reg);
	}

	FUNC7(hw, FUNC0(port, GPHY_CTRL),
		     GPC_DIS_SLEEP |
		     GPC_HWCFG_M_3 | GPC_HWCFG_M_2 | GPC_HWCFG_M_1 | GPC_HWCFG_M_0 |
		     GPC_ANEG_1 | GPC_RST_SET);

	FUNC7(hw, FUNC0(port, GPHY_CTRL),
		     GPC_DIS_SLEEP |
		     GPC_HWCFG_M_3 | GPC_HWCFG_M_2 | GPC_HWCFG_M_1 | GPC_HWCFG_M_0 |
		     GPC_ANEG_1 | GPC_RST_CLR);

	FUNC7(hw, FUNC0(port, GMAC_CTRL), GMC_RST_CLR);

	/* Force to 10/100 skge_reset will re-enable on resume	 */
	FUNC2(hw, port, PHY_MARV_AUNE_ADV,
		     (PHY_AN_100FULL | PHY_AN_100HALF |
		      PHY_AN_10FULL | PHY_AN_10HALF | PHY_AN_CSMA));
	/* no 1000 HD/FD */
	FUNC2(hw, port, PHY_MARV_1000T_CTRL, 0);
	FUNC2(hw, port, PHY_MARV_CTRL,
		     PHY_CT_RESET | PHY_CT_SPS_LSB | PHY_CT_ANE |
		     PHY_CT_RE_CFG | PHY_CT_DUP_MD);


	/* Set GMAC to no flow control and auto update for speed/duplex */
	FUNC3(hw, port, GM_GP_CTRL,
		    GM_GPCR_FC_TX_DIS|GM_GPCR_TX_ENA|GM_GPCR_RX_ENA|
		    GM_GPCR_DUP_FULL|GM_GPCR_FC_RX_DIS|GM_GPCR_AU_FCT_DIS);

	/* Set WOL address */
	FUNC4(hw->regs + FUNC1(port, WOL_MAC_ADDR),
		    skge->netdev->dev_addr, ETH_ALEN);

	/* Turn on appropriate WOL control bits */
	FUNC6(hw, FUNC1(port, WOL_CTRL_STAT), WOL_CTL_CLEAR_RESULT);
	ctrl = 0;
	if (skge->wol & WAKE_PHY)
		ctrl |= WOL_CTL_ENA_PME_ON_LINK_CHG|WOL_CTL_ENA_LINK_CHG_UNIT;
	else
		ctrl |= WOL_CTL_DIS_PME_ON_LINK_CHG|WOL_CTL_DIS_LINK_CHG_UNIT;

	if (skge->wol & WAKE_MAGIC)
		ctrl |= WOL_CTL_ENA_PME_ON_MAGIC_PKT|WOL_CTL_ENA_MAGIC_PKT_UNIT;
	else
		ctrl |= WOL_CTL_DIS_PME_ON_MAGIC_PKT|WOL_CTL_DIS_MAGIC_PKT_UNIT;

	ctrl |= WOL_CTL_DIS_PME_ON_PATTERN|WOL_CTL_DIS_PATTERN_UNIT;
	FUNC6(hw, FUNC1(port, WOL_CTRL_STAT), ctrl);

	/* block receiver */
	FUNC8(hw, FUNC0(port, RX_GMF_CTRL_T), GMF_RST_SET);
}