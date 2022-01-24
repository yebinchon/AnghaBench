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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RK3288_GMAC_CLK_125M ; 
 int /*<<< orphan*/  RK3288_GMAC_CLK_25M ; 
 int /*<<< orphan*/  RK3288_GMAC_CLK_2_5M ; 
 int /*<<< orphan*/  RK3288_GRF_SOC_CON1 ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rk_priv_data *bsp_priv, int speed)
{
	struct device *dev = &bsp_priv->pdev->dev;

	if (FUNC0(bsp_priv->grf)) {
		FUNC1(dev, "Missing rockchip,grf property\n");
		return;
	}

	if (speed == 10)
		FUNC2(bsp_priv->grf, RK3288_GRF_SOC_CON1,
			     RK3288_GMAC_CLK_2_5M);
	else if (speed == 100)
		FUNC2(bsp_priv->grf, RK3288_GRF_SOC_CON1,
			     RK3288_GMAC_CLK_25M);
	else if (speed == 1000)
		FUNC2(bsp_priv->grf, RK3288_GRF_SOC_CON1,
			     RK3288_GMAC_CLK_125M);
	else
		FUNC1(dev, "unknown speed value for RGMII! speed=%d", speed);
}