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
struct sunxi_priv_data {int internal_phy_powered; int /*<<< orphan*/  ephy_clk; int /*<<< orphan*/  rst_ephy; } ;
struct stmmac_priv {int /*<<< orphan*/  device; TYPE_1__* plat; } ;
struct TYPE_2__ {struct sunxi_priv_data* bsp_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct stmmac_priv *priv)
{
	struct sunxi_priv_data *gmac = priv->plat->bsp_priv;
	int ret;

	if (gmac->internal_phy_powered) {
		FUNC4(priv->device, "Internal PHY already powered\n");
		return 0;
	}

	FUNC3(priv->device, "Powering internal PHY\n");
	ret = FUNC1(gmac->ephy_clk);
	if (ret) {
		FUNC2(priv->device, "Cannot enable internal PHY\n");
		return ret;
	}

	/* Make sure the EPHY is properly reseted, as U-Boot may leave
	 * it at deasserted state, and thus it may fail to reset EMAC.
	 */
	FUNC5(gmac->rst_ephy);

	ret = FUNC6(gmac->rst_ephy);
	if (ret) {
		FUNC2(priv->device, "Cannot deassert internal phy\n");
		FUNC0(gmac->ephy_clk);
		return ret;
	}

	gmac->internal_phy_powered = true;

	return 0;
}