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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct mux_control {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  np; TYPE_1__* ctlr; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ops; struct device* dev; } ;
struct am654_hbmc_priv {struct mux_control* mux_ctrl; TYPE_2__ hbdev; TYPE_1__ ctlr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mux_control*) ; 
 int FUNC1 (struct mux_control*) ; 
 int /*<<< orphan*/  am654_hbmc_ops ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct am654_hbmc_priv* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct mux_control* FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct mux_control*) ; 
 int FUNC7 (struct mux_control*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct am654_hbmc_priv*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct am654_hbmc_priv *priv;
	int ret;

	priv = FUNC3(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC10(pdev, priv);

	if (FUNC9(dev->of_node, "mux-controls")) {
		struct mux_control *control = FUNC4(dev, NULL);

		if (FUNC0(control))
			return FUNC1(control);

		ret = FUNC7(control, 1);
		if (ret) {
			FUNC2(dev, "Failed to select HBMC mux\n");
			return ret;
		}
		priv->mux_ctrl = control;
	}

	FUNC12(dev);
	ret = FUNC13(dev);
	if (ret < 0) {
		FUNC14(dev);
		goto disable_pm;
	}

	priv->ctlr.dev = dev;
	priv->ctlr.ops = &am654_hbmc_ops;
	priv->hbdev.ctlr = &priv->ctlr;
	priv->hbdev.np = FUNC8(dev->of_node, NULL);
	ret = FUNC5(&priv->hbdev);
	if (ret) {
		FUNC2(dev, "failed to register controller\n");
		FUNC15(&pdev->dev);
		goto disable_pm;
	}

	return 0;
disable_pm:
	FUNC11(dev);
	if (priv->mux_ctrl)
		FUNC6(priv->mux_ctrl);
	return ret;
}