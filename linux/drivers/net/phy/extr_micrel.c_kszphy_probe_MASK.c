#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct device_node* of_node; } ;
struct TYPE_6__ {TYPE_3__ dev; } ;
struct phy_device {int dev_flags; TYPE_2__ mdio; struct kszphy_priv* priv; TYPE_1__* drv; } ;
struct kszphy_type {int has_rmii_ref_clk_sel; scalar_t__ led_mode_reg; } ;
struct kszphy_priv {int led_mode; int rmii_ref_clk_sel; int rmii_ref_clk_sel_val; struct kszphy_type const* type; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_5__ {struct kszphy_type* driver_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int MICREL_PHY_50MHZ_CLK ; 
 unsigned long FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (TYPE_3__*,char*) ; 
 struct kszphy_priv* FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device_node const*,char*) ; 
 int FUNC5 (struct device_node const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct phy_device*,char*,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct phy_device *phydev)
{
	const struct kszphy_type *type = phydev->drv->driver_data;
	const struct device_node *np = phydev->mdio.dev.of_node;
	struct kszphy_priv *priv;
	struct clk *clk;
	int ret;

	priv = FUNC3(&phydev->mdio.dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	phydev->priv = priv;

	priv->type = type;

	if (type->led_mode_reg) {
		ret = FUNC5(np, "micrel,led-mode",
				&priv->led_mode);
		if (ret)
			priv->led_mode = -1;

		if (priv->led_mode > 3) {
			FUNC6(phydev, "invalid led mode: 0x%02x\n",
				   priv->led_mode);
			priv->led_mode = -1;
		}
	} else {
		priv->led_mode = -1;
	}

	clk = FUNC2(&phydev->mdio.dev, "rmii-ref");
	/* NOTE: clk may be NULL if building without CONFIG_HAVE_CLK */
	if (!FUNC0(clk)) {
		unsigned long rate = FUNC1(clk);
		bool rmii_ref_clk_sel_25_mhz;

		priv->rmii_ref_clk_sel = type->has_rmii_ref_clk_sel;
		rmii_ref_clk_sel_25_mhz = FUNC4(np,
				"micrel,rmii-reference-clock-select-25-mhz");

		if (rate > 24500000 && rate < 25500000) {
			priv->rmii_ref_clk_sel_val = rmii_ref_clk_sel_25_mhz;
		} else if (rate > 49500000 && rate < 50500000) {
			priv->rmii_ref_clk_sel_val = !rmii_ref_clk_sel_25_mhz;
		} else {
			FUNC6(phydev, "Clock rate out of range: %ld\n",
				   rate);
			return -EINVAL;
		}
	}

	/* Support legacy board-file configuration */
	if (phydev->dev_flags & MICREL_PHY_50MHZ_CLK) {
		priv->rmii_ref_clk_sel = true;
		priv->rmii_ref_clk_sel_val = true;
	}

	return 0;
}