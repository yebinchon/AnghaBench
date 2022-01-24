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
struct emac_sgmii {scalar_t__ base; } ;
struct emac_adapter {int /*<<< orphan*/  netdev; struct emac_sgmii phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 scalar_t__ EMAC_QSERDES_COM_RESET_SM ; 
 scalar_t__ EMAC_SGMII_PHY_INTERRUPT_MASK ; 
 scalar_t__ EMAC_SGMII_PHY_SERDES_START ; 
 int READY ; 
 int /*<<< orphan*/  SERDES_START ; 
 unsigned int SERDES_START_WAIT_TIMES ; 
 int /*<<< orphan*/  cdr_setting ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  physical_coding_sublayer_programming ; 
 int /*<<< orphan*/  pll_setting ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  sysclk_refclk_setting ; 
 int /*<<< orphan*/  tx_rx_setting ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC6(struct emac_adapter *adpt)
{
	struct emac_sgmii *phy = &adpt->phy;
	unsigned int i;

	FUNC1(phy->base, physical_coding_sublayer_programming,
			   FUNC0(physical_coding_sublayer_programming));
	FUNC1(phy->base, sysclk_refclk_setting,
			   FUNC0(sysclk_refclk_setting));
	FUNC1(phy->base, pll_setting, FUNC0(pll_setting));
	FUNC1(phy->base, cdr_setting, FUNC0(cdr_setting));
	FUNC1(phy->base, tx_rx_setting, FUNC0(tx_rx_setting));

	/* Power up the Ser/Des engine */
	FUNC5(SERDES_START, phy->base + EMAC_SGMII_PHY_SERDES_START);

	for (i = 0; i < SERDES_START_WAIT_TIMES; i++) {
		if (FUNC3(phy->base + EMAC_QSERDES_COM_RESET_SM) & READY)
			break;
		FUNC4(100, 200);
	}

	if (i == SERDES_START_WAIT_TIMES) {
		FUNC2(adpt->netdev, "error: ser/des failed to start\n");
		return -EIO;
	}
	/* Mask out all the SGMII Interrupt */
	FUNC5(0, phy->base + EMAC_SGMII_PHY_INTERRUPT_MASK);

	return 0;
}