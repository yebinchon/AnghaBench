#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mvneta_bm {int /*<<< orphan*/  clk; struct platform_device* pdev; int /*<<< orphan*/  reg_base; } ;
struct device_node {struct mvneta_bm* data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct mvneta_bm* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device_node*,struct mvneta_bm*) ; 
 int FUNC10 (struct mvneta_bm*) ; 
 int /*<<< orphan*/  FUNC11 (struct mvneta_bm*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct mvneta_bm*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device_node *dn = pdev->dev.of_node;
	struct mvneta_bm *priv;
	int err;

	priv = FUNC7(&pdev->dev, sizeof(struct mvneta_bm), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->reg_base = FUNC8(pdev, 0);
	if (FUNC0(priv->reg_base))
		return FUNC1(priv->reg_base);

	priv->clk = FUNC6(&pdev->dev, NULL);
	if (FUNC0(priv->clk))
		return FUNC1(priv->clk);
	err = FUNC3(priv->clk);
	if (err < 0)
		return err;

	err = FUNC9(dn, priv);
	if (err < 0) {
		FUNC4(&pdev->dev, "failed to allocate internal memory\n");
		goto err_clk;
	}

	priv->pdev = pdev;

	/* Initialize buffer manager internals */
	err = FUNC10(priv);
	if (err < 0) {
		FUNC4(&pdev->dev, "failed to initialize controller\n");
		goto err_sram;
	}

	dn->data = priv;
	FUNC12(pdev, priv);

	FUNC5(&pdev->dev, "Buffer Manager for network controller enabled\n");

	return 0;

err_sram:
	FUNC11(priv);
err_clk:
	FUNC2(priv->clk);
	return err;
}