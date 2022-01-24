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
struct rk_priv_data {int /*<<< orphan*/  grf; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RK3228 ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int RK3228_GMAC_PHY_INTF_SEL_RGMII ; 
 int RK3228_GMAC_RMII_MODE_CLR ; 
 int /*<<< orphan*/  RK3228_GRF_MAC_CON0 ; 
 int /*<<< orphan*/  RK3228_GRF_MAC_CON1 ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct rk_priv_data *bsp_priv,
				int tx_delay, int rx_delay)
{
	struct device *dev = &bsp_priv->pdev->dev;

	if (FUNC1(bsp_priv->grf)) {
		FUNC4(dev, "Missing rockchip,grf property\n");
		return;
	}

	FUNC5(bsp_priv->grf, RK3228_GRF_MAC_CON1,
		     RK3228_GMAC_PHY_INTF_SEL_RGMII |
		     RK3228_GMAC_RMII_MODE_CLR |
		     FUNC0(RK3228, tx_delay, rx_delay));

	FUNC5(bsp_priv->grf, RK3228_GRF_MAC_CON0,
		     FUNC2(rx_delay) |
		     FUNC3(tx_delay));
}