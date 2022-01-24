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
typedef  int u16 ;
struct sky2_port {unsigned int port; int /*<<< orphan*/  tx_prod; int /*<<< orphan*/  phy_lock; struct sky2_hw* hw; } ;
struct sky2_hw {scalar_t__ chip_id; scalar_t__ chip_rev; scalar_t__* dev; } ;

/* Variables and functions */
 int BMU_STOP ; 
 scalar_t__ CHIP_ID_YUKON_XL ; 
 int /*<<< orphan*/  GMAC_CTRL ; 
 int /*<<< orphan*/  GMC_PAUSE_OFF ; 
 int /*<<< orphan*/  GMC_RST_SET ; 
 int /*<<< orphan*/  GMF_RST_SET ; 
 int GM_GPCR_RX_ENA ; 
 int GM_GPCR_TX_ENA ; 
 int /*<<< orphan*/  GM_GP_CTRL ; 
 int /*<<< orphan*/  GPC_RST_SET ; 
 int /*<<< orphan*/  GPHY_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Q_CSR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RB_CTRL ; 
 int RB_DIS_OP_MD ; 
 int RB_RST_SET ; 
 int /*<<< orphan*/  RX_GMF_CTRL_T ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STAT_ISR_TIMER_CNT ; 
 int /*<<< orphan*/  STAT_ISR_TIMER_CTRL ; 
 int /*<<< orphan*/  STAT_LEV_TIMER_CNT ; 
 int /*<<< orphan*/  STAT_TX_TIMER_CNT ; 
 int FUNC3 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sky2_hw*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sky2_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct sky2_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sky2_hw*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct sky2_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * txqaddr ; 

__attribute__((used)) static void FUNC16(struct sky2_port *sky2)
{
	struct sky2_hw *hw = sky2->hw;
	unsigned port = sky2->port;
	u16 ctrl;

	/* Force flow control off */
	FUNC13(hw, FUNC2(port, GMAC_CTRL), GMC_PAUSE_OFF);

	/* Stop transmitter */
	FUNC12(hw, FUNC0(txqaddr[port], Q_CSR), BMU_STOP);
	FUNC7(hw, FUNC0(txqaddr[port], Q_CSR));

	FUNC12(hw, FUNC1(txqaddr[port], RB_CTRL),
		     RB_RST_SET | RB_DIS_OP_MD);

	ctrl = FUNC3(hw, port, GM_GP_CTRL);
	ctrl &= ~(GM_GPCR_TX_ENA | GM_GPCR_RX_ENA);
	FUNC4(hw, port, GM_GP_CTRL, ctrl);

	FUNC13(hw, FUNC2(port, GPHY_CTRL), GPC_RST_SET);

	/* Workaround shared GMAC reset */
	if (!(hw->chip_id == CHIP_ID_YUKON_XL && hw->chip_rev == 0 &&
	      port == 0 && hw->dev[1] && FUNC5(hw->dev[1])))
		FUNC13(hw, FUNC2(port, GMAC_CTRL), GMC_RST_SET);

	FUNC13(hw, FUNC2(port, RX_GMF_CTRL_T), GMF_RST_SET);

	/* Force any delayed status interrupt and NAPI */
	FUNC12(hw, STAT_LEV_TIMER_CNT, 0);
	FUNC12(hw, STAT_TX_TIMER_CNT, 0);
	FUNC12(hw, STAT_ISR_TIMER_CNT, 0);
	FUNC8(hw, STAT_ISR_TIMER_CTRL);

	FUNC9(sky2);

	FUNC14(&sky2->phy_lock);
	FUNC6(hw, port);
	FUNC15(&sky2->phy_lock);

	FUNC11(hw, port);

	/* Free any pending frames stuck in HW queue */
	FUNC10(sky2, sky2->tx_prod);
}