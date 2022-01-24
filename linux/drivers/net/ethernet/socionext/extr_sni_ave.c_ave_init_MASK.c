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
struct phy_device {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ethtool_wolinfo {scalar_t__ wolopts; int /*<<< orphan*/  supported; int /*<<< orphan*/  cmd; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct ave_private {int nclks; int nrsts; int /*<<< orphan*/ * clk; int /*<<< orphan*/ * rst; int /*<<< orphan*/  mdio; struct phy_device* phydev; int /*<<< orphan*/  pinmode_val; int /*<<< orphan*/  pinmode_mask; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  ETHTOOL_GWOL ; 
 int /*<<< orphan*/  SG_ETPINMODE ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct ethtool_wolinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct ethtool_wolinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  ave_phy_adjust_link ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct ave_private* FUNC8 (struct net_device*) ; 
 struct device_node* FUNC9 (struct device_node*,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*) ; 
 struct phy_device* FUNC12 (struct net_device*,struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct phy_device*) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct net_device *ndev)
{
	struct ethtool_wolinfo wol = { .cmd = ETHTOOL_GWOL };
	struct ave_private *priv = FUNC8(ndev);
	struct device *dev = ndev->dev.parent;
	struct device_node *np = dev->of_node;
	struct device_node *mdio_np;
	struct phy_device *phydev;
	int nc, nr, ret;

	/* enable clk because of hw access until ndo_open */
	for (nc = 0; nc < priv->nclks; nc++) {
		ret = FUNC4(priv->clk[nc]);
		if (ret) {
			FUNC5(dev, "can't enable clock\n");
			goto out_clk_disable;
		}
	}

	for (nr = 0; nr < priv->nrsts; nr++) {
		ret = FUNC19(priv->rst[nr]);
		if (ret) {
			FUNC5(dev, "can't deassert reset\n");
			goto out_reset_assert;
		}
	}

	ret = FUNC17(priv->regmap, SG_ETPINMODE,
				 priv->pinmode_mask, priv->pinmode_val);
	if (ret)
		return ret;

	FUNC2(ndev);

	mdio_np = FUNC9(np, "mdio");
	if (!mdio_np) {
		FUNC5(dev, "mdio node not found\n");
		ret = -EINVAL;
		goto out_reset_assert;
	}
	ret = FUNC10(priv->mdio, mdio_np);
	FUNC11(mdio_np);
	if (ret) {
		FUNC5(dev, "failed to register mdiobus\n");
		goto out_reset_assert;
	}

	phydev = FUNC12(ndev, np, ave_phy_adjust_link);
	if (!phydev) {
		FUNC5(dev, "could not attach to PHY\n");
		ret = -ENODEV;
		goto out_mdio_unregister;
	}

	priv->phydev = phydev;

	FUNC0(ndev, &wol);
	FUNC6(&ndev->dev, !!wol.supported);

	/* set wol initial state disabled */
	wol.wolopts = 0;
	FUNC1(ndev, &wol);

	if (!FUNC14(phydev))
		FUNC15(phydev, SPEED_100);

	FUNC16(phydev);

	FUNC13(phydev);

	return 0;

out_mdio_unregister:
	FUNC7(priv->mdio);
out_reset_assert:
	while (--nr >= 0)
		FUNC18(priv->rst[nr]);
out_clk_disable:
	while (--nc >= 0)
		FUNC3(priv->clk[nc]);

	return ret;
}