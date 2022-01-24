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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct g12a_mdio_mux {int /*<<< orphan*/  pclk; int /*<<< orphan*/  mux_handle; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 struct g12a_mdio_mux* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*) ; 
 int /*<<< orphan*/  g12a_mdio_switch_fn ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct g12a_mdio_mux*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct g12a_mdio_mux *priv;
	int ret;

	priv = FUNC6(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC10(pdev, priv);

	priv->regs = FUNC7(pdev, 0);
	if (FUNC0(priv->regs))
		return FUNC1(priv->regs);

	priv->pclk = FUNC5(dev, "pclk");
	if (FUNC0(priv->pclk)) {
		ret = FUNC1(priv->pclk);
		if (ret != -EPROBE_DEFER)
			FUNC4(dev, "failed to get peripheral clock\n");
		return ret;
	}

	/* Make sure the device registers are clocked */
	ret = FUNC3(priv->pclk);
	if (ret) {
		FUNC4(dev, "failed to enable peripheral clock");
		return ret;
	}

	/* Register PLL in CCF */
	ret = FUNC8(dev);
	if (ret)
		goto err;

	ret = FUNC9(dev, dev->of_node, g12a_mdio_switch_fn,
			    &priv->mux_handle, dev, NULL);
	if (ret) {
		if (ret != -EPROBE_DEFER)
			FUNC4(dev, "mdio multiplexer init failed: %d", ret);
		goto err;
	}

	return 0;

err:
	FUNC2(priv->pclk);
	return ret;
}