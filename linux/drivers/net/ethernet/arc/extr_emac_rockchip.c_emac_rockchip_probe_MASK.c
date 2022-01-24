#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/ * clk; int /*<<< orphan*/  set_mac_speed; int /*<<< orphan*/  drv_version; int /*<<< orphan*/  drv_name; } ;
struct rockchip_priv_data {int /*<<< orphan*/ * refclk; int /*<<< orphan*/ * regulator; int /*<<< orphan*/ * macclk; TYPE_2__* soc_data; int /*<<< orphan*/ * grf; TYPE_1__ emac; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {TYPE_2__* data; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int grf_speed_offset; int grf_mode_offset; scalar_t__ need_div_macclk; int /*<<< orphan*/  grf_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  DRV_VERSION ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int PHY_INTERFACE_MODE_RMII ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct device*) ; 
 struct net_device* FUNC3 (int) ; 
 int FUNC4 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,...) ; 
 void* FUNC9 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC10 (struct device*,char*) ; 
 int /*<<< orphan*/  emac_rockchip_dt_ids ; 
 int /*<<< orphan*/  emac_rockchip_set_mac_speed ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 struct rockchip_priv_data* FUNC12 (struct net_device*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct net_device*) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct net_device *ndev;
	struct rockchip_priv_data *priv;
	const struct of_device_id *match;
	u32 data;
	int err, interface;

	if (!pdev->dev.of_node)
		return -ENODEV;

	ndev = FUNC3(sizeof(struct rockchip_priv_data));
	if (!ndev)
		return -ENOMEM;
	FUNC15(pdev, ndev);
	FUNC2(ndev, dev);

	priv = FUNC12(ndev);
	priv->emac.drv_name = DRV_NAME;
	priv->emac.drv_version = DRV_VERSION;
	priv->emac.set_mac_speed = emac_rockchip_set_mac_speed;

	interface = FUNC13(dev->of_node);

	/* RK3036/RK3066/RK3188 SoCs only support RMII */
	if (interface != PHY_INTERFACE_MODE_RMII) {
		FUNC8(dev, "unsupported phy interface mode %d\n", interface);
		err = -ENOTSUPP;
		goto out_netdev;
	}

	priv->grf = FUNC19(dev->of_node,
						    "rockchip,grf");
	if (FUNC0(priv->grf)) {
		FUNC8(dev, "failed to retrieve global register file (%ld)\n",
			FUNC1(priv->grf));
		err = FUNC1(priv->grf);
		goto out_netdev;
	}

	match = FUNC14(emac_rockchip_dt_ids, dev->of_node);
	priv->soc_data = match->data;

	priv->emac.clk = FUNC9(dev, "hclk");
	if (FUNC0(priv->emac.clk)) {
		FUNC8(dev, "failed to retrieve host clock (%ld)\n",
			FUNC1(priv->emac.clk));
		err = FUNC1(priv->emac.clk);
		goto out_netdev;
	}

	priv->refclk = FUNC9(dev, "macref");
	if (FUNC0(priv->refclk)) {
		FUNC8(dev, "failed to retrieve reference clock (%ld)\n",
			FUNC1(priv->refclk));
		err = FUNC1(priv->refclk);
		goto out_netdev;
	}

	err = FUNC6(priv->refclk);
	if (err) {
		FUNC8(dev, "failed to enable reference clock (%d)\n", err);
		goto out_netdev;
	}

	/* Optional regulator for PHY */
	priv->regulator = FUNC10(dev, "phy");
	if (FUNC0(priv->regulator)) {
		if (FUNC1(priv->regulator) == -EPROBE_DEFER) {
			err = -EPROBE_DEFER;
			goto out_clk_disable;
		}
		FUNC8(dev, "no regulator found\n");
		priv->regulator = NULL;
	}

	if (priv->regulator) {
		err = FUNC18(priv->regulator);
		if (err) {
			FUNC8(dev, "failed to enable phy-supply (%d)\n", err);
			goto out_clk_disable;
		}
	}

	/* Set speed 100M */
	data = (1 << (priv->soc_data->grf_speed_offset + 16)) |
	       (1 << priv->soc_data->grf_speed_offset);
	/* Set RMII mode */
	data |= (1 << (priv->soc_data->grf_mode_offset + 16)) |
		(0 << priv->soc_data->grf_mode_offset);

	err = FUNC16(priv->grf, priv->soc_data->grf_offset, data);
	if (err) {
		FUNC8(dev, "unable to apply initial settings to grf (%d)\n",
			err);
		goto out_regulator_disable;
	}

	/* RMII interface needs always a rate of 50MHz */
	err = FUNC7(priv->refclk, 50000000);
	if (err) {
		FUNC8(dev,
			"failed to change reference clock rate (%d)\n", err);
		goto out_regulator_disable;
	}

	if (priv->soc_data->need_div_macclk) {
		priv->macclk = FUNC9(dev, "macclk");
		if (FUNC0(priv->macclk)) {
			FUNC8(dev, "failed to retrieve mac clock (%ld)\n",
				FUNC1(priv->macclk));
			err = FUNC1(priv->macclk);
			goto out_regulator_disable;
		}

		err = FUNC6(priv->macclk);
		if (err) {
			FUNC8(dev, "failed to enable mac clock (%d)\n", err);
			goto out_regulator_disable;
		}

		/* RMII TX/RX needs always a rate of 25MHz */
		err = FUNC7(priv->macclk, 25000000);
		if (err) {
			FUNC8(dev,
				"failed to change mac clock rate (%d)\n", err);
			goto out_clk_disable_macclk;
		}
	}

	err = FUNC4(ndev, interface);
	if (err) {
		FUNC8(dev, "failed to probe arc emac (%d)\n", err);
		goto out_clk_disable_macclk;
	}

	return 0;

out_clk_disable_macclk:
	if (priv->soc_data->need_div_macclk)
		FUNC5(priv->macclk);
out_regulator_disable:
	if (priv->regulator)
		FUNC17(priv->regulator);
out_clk_disable:
	FUNC5(priv->refclk);
out_netdev:
	FUNC11(ndev);
	return err;
}