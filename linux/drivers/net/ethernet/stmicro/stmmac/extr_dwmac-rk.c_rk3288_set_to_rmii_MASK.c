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
 int RK3288_GMAC_PHY_INTF_SEL_RMII ; 
 int RK3288_GMAC_RMII_MODE ; 
 int /*<<< orphan*/  RK3288_GRF_SOC_CON1 ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct rk_priv_data *bsp_priv)
{
	struct device *dev = &bsp_priv->pdev->dev;

	if (FUNC0(bsp_priv->grf)) {
		FUNC1(dev, "Missing rockchip,grf property\n");
		return;
	}

	FUNC2(bsp_priv->grf, RK3288_GRF_SOC_CON1,
		     RK3288_GMAC_PHY_INTF_SEL_RMII | RK3288_GMAC_RMII_MODE);
}