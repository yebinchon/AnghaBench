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
struct rk_priv_data {int /*<<< orphan*/  grf; scalar_t__ phy_reset; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* integrated_phy_powerup ) (struct rk_priv_data*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RK_GMAC2PHY_RMII_MODE ; 
 int /*<<< orphan*/  RK_GRF_CON2_MACPHY_ID ; 
 int /*<<< orphan*/  RK_GRF_CON3_MACPHY_ID ; 
 int /*<<< orphan*/  RK_GRF_MACPHY_CON0 ; 
 int /*<<< orphan*/  RK_GRF_MACPHY_CON2 ; 
 int /*<<< orphan*/  RK_GRF_MACPHY_CON3 ; 
 int /*<<< orphan*/  RK_MACPHY_CFG_CLK_50M ; 
 int /*<<< orphan*/  RK_MACPHY_DISABLE ; 
 int /*<<< orphan*/  RK_MACPHY_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct rk_priv_data*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct rk_priv_data *priv)
{
	if (priv->ops->integrated_phy_powerup)
		priv->ops->integrated_phy_powerup(priv);

	FUNC1(priv->grf, RK_GRF_MACPHY_CON0, RK_MACPHY_CFG_CLK_50M);
	FUNC1(priv->grf, RK_GRF_MACPHY_CON0, RK_GMAC2PHY_RMII_MODE);

	FUNC1(priv->grf, RK_GRF_MACPHY_CON2, RK_GRF_CON2_MACPHY_ID);
	FUNC1(priv->grf, RK_GRF_MACPHY_CON3, RK_GRF_CON3_MACPHY_ID);

	if (priv->phy_reset) {
		/* PHY needs to be disabled before trying to reset it */
		FUNC1(priv->grf, RK_GRF_MACPHY_CON0, RK_MACPHY_DISABLE);
		if (priv->phy_reset)
			FUNC2(priv->phy_reset);
		FUNC5(10, 20);
		if (priv->phy_reset)
			FUNC3(priv->phy_reset);
		FUNC5(10, 20);
		FUNC1(priv->grf, RK_GRF_MACPHY_CON0, RK_MACPHY_ENABLE);
		FUNC0(30);
	}
}