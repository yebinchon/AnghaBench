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
typedef  int u8 ;
struct meson8b_dwmac {int phy_mode; int tx_delay_ns; int /*<<< orphan*/  dev; int /*<<< orphan*/  rgmii_tx_clk; } ;

/* Variables and functions */
 int EINVAL ; 
#define  PHY_INTERFACE_MODE_RGMII 132 
#define  PHY_INTERFACE_MODE_RGMII_ID 131 
#define  PHY_INTERFACE_MODE_RGMII_RXID 130 
#define  PHY_INTERFACE_MODE_RGMII_TXID 129 
#define  PHY_INTERFACE_MODE_RMII 128 
 int /*<<< orphan*/  PRG_ETH0 ; 
 int PRG_ETH0_INVERTED_RMII_CLK ; 
 int PRG_ETH0_TXDLY_MASK ; 
 int PRG_ETH0_TXDLY_SHIFT ; 
 int PRG_ETH0_TX_AND_PHY_REF_CLK ; 
 int /*<<< orphan*/  clk_disable_unprepare ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void (*) (void*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct meson8b_dwmac*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct meson8b_dwmac *dwmac)
{
	int ret;
	u8 tx_dly_val = 0;

	switch (dwmac->phy_mode) {
	case PHY_INTERFACE_MODE_RGMII:
	case PHY_INTERFACE_MODE_RGMII_RXID:
		/* TX clock delay in ns = "8ns / 4 * tx_dly_val" (where
		 * 8ns are exactly one cycle of the 125MHz RGMII TX clock):
		 * 0ns = 0x0, 2ns = 0x1, 4ns = 0x2, 6ns = 0x3
		 */
		tx_dly_val = dwmac->tx_delay_ns >> 1;
		/* fall through */

	case PHY_INTERFACE_MODE_RGMII_ID:
	case PHY_INTERFACE_MODE_RGMII_TXID:
		/* only relevant for RMII mode -> disable in RGMII mode */
		FUNC4(dwmac, PRG_ETH0,
					PRG_ETH0_INVERTED_RMII_CLK, 0);

		FUNC4(dwmac, PRG_ETH0, PRG_ETH0_TXDLY_MASK,
					tx_dly_val << PRG_ETH0_TXDLY_SHIFT);

		/* Configure the 125MHz RGMII TX clock, the IP block changes
		 * the output automatically (= without us having to configure
		 * a register) based on the line-speed (125MHz for Gbit speeds,
		 * 25MHz for 100Mbit/s and 2.5MHz for 10Mbit/s).
		 */
		ret = FUNC1(dwmac->rgmii_tx_clk, 125 * 1000 * 1000);
		if (ret) {
			FUNC2(dwmac->dev,
				"failed to set RGMII TX clock\n");
			return ret;
		}

		ret = FUNC0(dwmac->rgmii_tx_clk);
		if (ret) {
			FUNC2(dwmac->dev,
				"failed to enable the RGMII TX clock\n");
			return ret;
		}

		FUNC3(dwmac->dev,
					(void(*)(void *))clk_disable_unprepare,
					dwmac->rgmii_tx_clk);
		break;

	case PHY_INTERFACE_MODE_RMII:
		/* invert internal clk_rmii_i to generate 25/2.5 tx_rx_clk */
		FUNC4(dwmac, PRG_ETH0,
					PRG_ETH0_INVERTED_RMII_CLK,
					PRG_ETH0_INVERTED_RMII_CLK);

		/* TX clock delay cannot be configured in RMII mode */
		FUNC4(dwmac, PRG_ETH0, PRG_ETH0_TXDLY_MASK,
					0);

		break;

	default:
		FUNC2(dwmac->dev, "unsupported phy-mode %s\n",
			FUNC5(dwmac->phy_mode));
		return -EINVAL;
	}

	/* enable TX_CLK and PHY_REF_CLK generator */
	FUNC4(dwmac, PRG_ETH0, PRG_ETH0_TX_AND_PHY_REF_CLK,
				PRG_ETH0_TX_AND_PHY_REF_CLK);

	return 0;
}