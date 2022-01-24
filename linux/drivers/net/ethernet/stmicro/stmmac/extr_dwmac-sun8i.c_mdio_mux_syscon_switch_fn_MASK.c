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
typedef  int u32 ;
struct sunxi_priv_data {int /*<<< orphan*/  regmap_field; } ;
struct stmmac_priv {int /*<<< orphan*/  device; TYPE_1__* plat; } ;
struct TYPE_2__ {struct sunxi_priv_data* bsp_priv; } ;

/* Variables and functions */
#define  DWMAC_SUN8I_MDIO_MUX_EXTERNAL_ID 129 
#define  DWMAC_SUN8I_MDIO_MUX_INTERNAL_ID 128 
 int EINVAL ; 
 int H3_EPHY_MUX_MASK ; 
 int H3_EPHY_SELECT ; 
 int H3_EPHY_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct stmmac_priv*) ; 
 int FUNC5 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct sunxi_priv_data*) ; 

__attribute__((used)) static int FUNC7(int current_child, int desired_child,
				     void *data)
{
	struct stmmac_priv *priv = data;
	struct sunxi_priv_data *gmac = priv->plat->bsp_priv;
	u32 reg, val;
	int ret = 0;
	bool need_power_ephy = false;

	if (current_child ^ desired_child) {
		FUNC2(gmac->regmap_field, &reg);
		switch (desired_child) {
		case DWMAC_SUN8I_MDIO_MUX_INTERNAL_ID:
			FUNC1(priv->device, "Switch mux to internal PHY");
			val = (reg & ~H3_EPHY_MUX_MASK) | H3_EPHY_SELECT;

			need_power_ephy = true;
			break;
		case DWMAC_SUN8I_MDIO_MUX_EXTERNAL_ID:
			FUNC1(priv->device, "Switch mux to external PHY");
			val = (reg & ~H3_EPHY_MUX_MASK) | H3_EPHY_SHUTDOWN;
			need_power_ephy = false;
			break;
		default:
			FUNC0(priv->device, "Invalid child ID %x\n",
				desired_child);
			return -EINVAL;
		}
		FUNC3(gmac->regmap_field, val);
		if (need_power_ephy) {
			ret = FUNC4(priv);
			if (ret)
				return ret;
		} else {
			FUNC6(gmac);
		}
		/* After changing syscon value, the MAC need reset or it will
		 * use the last value (and so the last PHY set).
		 */
		ret = FUNC5(priv);
	}
	return ret;
}