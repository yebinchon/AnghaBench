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
struct rk_priv_data {int phy_iface; int clk_enabled; int /*<<< orphan*/  clk_mac_speed; int /*<<< orphan*/  mac_clk_tx; int /*<<< orphan*/  pclk_mac; int /*<<< orphan*/  aclk_mac; int /*<<< orphan*/  clk_phy; int /*<<< orphan*/  clk_mac_refout; int /*<<< orphan*/  clk_mac_ref; int /*<<< orphan*/  mac_clk_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PHY_INTERFACE_MODE_RMII ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct rk_priv_data *bsp_priv, bool enable)
{
	int phy_iface = bsp_priv->phy_iface;

	if (enable) {
		if (!bsp_priv->clk_enabled) {
			if (phy_iface == PHY_INTERFACE_MODE_RMII) {
				if (!FUNC0(bsp_priv->mac_clk_rx))
					FUNC2(
						bsp_priv->mac_clk_rx);

				if (!FUNC0(bsp_priv->clk_mac_ref))
					FUNC2(
						bsp_priv->clk_mac_ref);

				if (!FUNC0(bsp_priv->clk_mac_refout))
					FUNC2(
						bsp_priv->clk_mac_refout);
			}

			if (!FUNC0(bsp_priv->clk_phy))
				FUNC2(bsp_priv->clk_phy);

			if (!FUNC0(bsp_priv->aclk_mac))
				FUNC2(bsp_priv->aclk_mac);

			if (!FUNC0(bsp_priv->pclk_mac))
				FUNC2(bsp_priv->pclk_mac);

			if (!FUNC0(bsp_priv->mac_clk_tx))
				FUNC2(bsp_priv->mac_clk_tx);

			if (!FUNC0(bsp_priv->clk_mac_speed))
				FUNC2(bsp_priv->clk_mac_speed);

			/**
			 * if (!IS_ERR(bsp_priv->clk_mac))
			 *	clk_prepare_enable(bsp_priv->clk_mac);
			 */
			FUNC3(5);
			bsp_priv->clk_enabled = true;
		}
	} else {
		if (bsp_priv->clk_enabled) {
			if (phy_iface == PHY_INTERFACE_MODE_RMII) {
				FUNC1(bsp_priv->mac_clk_rx);

				FUNC1(bsp_priv->clk_mac_ref);

				FUNC1(bsp_priv->clk_mac_refout);
			}

			FUNC1(bsp_priv->clk_phy);

			FUNC1(bsp_priv->aclk_mac);

			FUNC1(bsp_priv->pclk_mac);

			FUNC1(bsp_priv->mac_clk_tx);

			FUNC1(bsp_priv->clk_mac_speed);
			/**
			 * if (!IS_ERR(bsp_priv->clk_mac))
			 *	clk_disable_unprepare(bsp_priv->clk_mac);
			 */
			bsp_priv->clk_enabled = false;
		}
	}

	return 0;
}