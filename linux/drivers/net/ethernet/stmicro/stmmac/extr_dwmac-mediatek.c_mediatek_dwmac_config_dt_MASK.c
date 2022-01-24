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
typedef  scalar_t__ u32 ;
struct mac_delay_struct {void* rx_inv; void* tx_inv; scalar_t__ rx_delay; scalar_t__ tx_delay; } ;
struct mediatek_dwmac_plat_data {scalar_t__ phy_mode; int /*<<< orphan*/  np; void* rmii_rxc; int /*<<< orphan*/  dev; TYPE_1__* variant; int /*<<< orphan*/  peri_regmap; struct mac_delay_struct mac_delay; } ;
struct TYPE_2__ {scalar_t__ tx_delay_max; scalar_t__ rx_delay_max; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct mediatek_dwmac_plat_data *plat)
{
	struct mac_delay_struct *mac_delay = &plat->mac_delay;
	u32 tx_delay_ps, rx_delay_ps;

	plat->peri_regmap = FUNC6(plat->np, "mediatek,pericfg");
	if (FUNC0(plat->peri_regmap)) {
		FUNC2(plat->dev, "Failed to get pericfg syscon\n");
		return FUNC1(plat->peri_regmap);
	}

	plat->phy_mode = FUNC3(plat->np);
	if (plat->phy_mode < 0) {
		FUNC2(plat->dev, "not find phy-mode\n");
		return -EINVAL;
	}

	if (!FUNC5(plat->np, "mediatek,tx-delay-ps", &tx_delay_ps)) {
		if (tx_delay_ps < plat->variant->tx_delay_max) {
			mac_delay->tx_delay = tx_delay_ps;
		} else {
			FUNC2(plat->dev, "Invalid TX clock delay: %dps\n", tx_delay_ps);
			return -EINVAL;
		}
	}

	if (!FUNC5(plat->np, "mediatek,rx-delay-ps", &rx_delay_ps)) {
		if (rx_delay_ps < plat->variant->rx_delay_max) {
			mac_delay->rx_delay = rx_delay_ps;
		} else {
			FUNC2(plat->dev, "Invalid RX clock delay: %dps\n", rx_delay_ps);
			return -EINVAL;
		}
	}

	mac_delay->tx_inv = FUNC4(plat->np, "mediatek,txc-inverse");
	mac_delay->rx_inv = FUNC4(plat->np, "mediatek,rxc-inverse");
	plat->rmii_rxc = FUNC4(plat->np, "mediatek,rmii-rxc");

	return 0;
}