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
struct enetc_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ENETC_G_EPFBLPR1_XGMII ; 
 int ENETC_MAC_MAXFRM_SIZE ; 
 int /*<<< orphan*/  ENETC_PM0_CMD_CFG ; 
 int ENETC_PM0_CMD_PHY_TX_EN ; 
 int ENETC_PM0_CMD_TXP ; 
 int ENETC_PM0_IFM_RGAUTO ; 
 int ENETC_PM0_IFM_XGMII ; 
 int /*<<< orphan*/  ENETC_PM0_IF_MODE ; 
 int /*<<< orphan*/  ENETC_PM0_MAXFRM ; 
 int ENETC_PM0_PROMISC ; 
 int ENETC_PM0_RX_EN ; 
 int ENETC_PM0_TX_EN ; 
 int /*<<< orphan*/  ENETC_PM1_CMD_CFG ; 
 int ENETC_PMO_IFM_RG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENETC_PTXMBAR ; 
 int /*<<< orphan*/  ENETC_RX_MAXFRM_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct enetc_hw*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct enetc_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct enetc_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct enetc_hw *hw)
{
	FUNC5(hw, ENETC_PM0_MAXFRM,
		      FUNC2(ENETC_RX_MAXFRM_SIZE));

	FUNC5(hw, FUNC1(0), ENETC_MAC_MAXFRM_SIZE);
	FUNC5(hw, ENETC_PTXMBAR, 2 * ENETC_MAC_MAXFRM_SIZE);

	FUNC5(hw, ENETC_PM0_CMD_CFG, ENETC_PM0_CMD_PHY_TX_EN |
		      ENETC_PM0_CMD_TXP	| ENETC_PM0_PROMISC |
		      ENETC_PM0_TX_EN | ENETC_PM0_RX_EN);

	FUNC5(hw, ENETC_PM1_CMD_CFG, ENETC_PM0_CMD_PHY_TX_EN |
		      ENETC_PM0_CMD_TXP	| ENETC_PM0_PROMISC |
		      ENETC_PM0_TX_EN | ENETC_PM0_RX_EN);
	/* set auto-speed for RGMII */
	if (FUNC4(hw, ENETC_PM0_IF_MODE) & ENETC_PMO_IFM_RG)
		FUNC5(hw, ENETC_PM0_IF_MODE, ENETC_PM0_IFM_RGAUTO);
	if (FUNC3(hw, FUNC0(1)) == ENETC_G_EPFBLPR1_XGMII)
		FUNC5(hw, ENETC_PM0_IF_MODE, ENETC_PM0_IFM_XGMII);
}