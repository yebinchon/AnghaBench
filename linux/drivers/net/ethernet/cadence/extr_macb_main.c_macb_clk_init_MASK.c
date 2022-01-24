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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct macb_platform_data {struct clk* hclk; struct clk* pclk; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 struct macb_platform_data* FUNC6 (int /*<<< orphan*/ *) ; 
 struct clk* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 struct clk* FUNC8 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev, struct clk **pclk,
			 struct clk **hclk, struct clk **tx_clk,
			 struct clk **rx_clk, struct clk **tsu_clk)
{
	struct macb_platform_data *pdata;
	int err;

	pdata = FUNC6(&pdev->dev);
	if (pdata) {
		*pclk = pdata->pclk;
		*hclk = pdata->hclk;
	} else {
		*pclk = FUNC7(&pdev->dev, "pclk");
		*hclk = FUNC7(&pdev->dev, "hclk");
	}

	if (FUNC1(*pclk)) {
		err = FUNC2(*pclk);
		if (!err)
			err = -ENODEV;

		FUNC5(&pdev->dev, "failed to get macb_clk (%d)\n", err);
		return err;
	}

	if (FUNC1(*hclk)) {
		err = FUNC2(*hclk);
		if (!err)
			err = -ENODEV;

		FUNC5(&pdev->dev, "failed to get hclk (%d)\n", err);
		return err;
	}

	*tx_clk = FUNC8(&pdev->dev, "tx_clk");
	if (FUNC0(*tx_clk))
		return FUNC2(*tx_clk);

	*rx_clk = FUNC8(&pdev->dev, "rx_clk");
	if (FUNC0(*rx_clk))
		return FUNC2(*rx_clk);

	*tsu_clk = FUNC8(&pdev->dev, "tsu_clk");
	if (FUNC0(*tsu_clk))
		return FUNC2(*tsu_clk);

	err = FUNC4(*pclk);
	if (err) {
		FUNC5(&pdev->dev, "failed to enable pclk (%d)\n", err);
		return err;
	}

	err = FUNC4(*hclk);
	if (err) {
		FUNC5(&pdev->dev, "failed to enable hclk (%d)\n", err);
		goto err_disable_pclk;
	}

	err = FUNC4(*tx_clk);
	if (err) {
		FUNC5(&pdev->dev, "failed to enable tx_clk (%d)\n", err);
		goto err_disable_hclk;
	}

	err = FUNC4(*rx_clk);
	if (err) {
		FUNC5(&pdev->dev, "failed to enable rx_clk (%d)\n", err);
		goto err_disable_txclk;
	}

	err = FUNC4(*tsu_clk);
	if (err) {
		FUNC5(&pdev->dev, "failed to enable tsu_clk (%d)\n", err);
		goto err_disable_rxclk;
	}

	return 0;

err_disable_rxclk:
	FUNC3(*rx_clk);

err_disable_txclk:
	FUNC3(*tx_clk);

err_disable_hclk:
	FUNC3(*hclk);

err_disable_pclk:
	FUNC3(*pclk);

	return err;
}