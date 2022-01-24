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
struct mediatek_dwmac_variant {int (* dwmac_set_phy_interface ) (struct mediatek_dwmac_plat_data*) ;int (* dwmac_set_delay ) (struct mediatek_dwmac_plat_data*) ;int /*<<< orphan*/  num_clks; int /*<<< orphan*/  dma_bit_mask; } ;
struct mediatek_dwmac_plat_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  clks; struct mediatek_dwmac_variant* variant; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct mediatek_dwmac_plat_data*) ; 
 int FUNC7 (struct mediatek_dwmac_plat_data*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev, void *priv)
{
	struct mediatek_dwmac_plat_data *plat = priv;
	const struct mediatek_dwmac_variant *variant = plat->variant;
	int ret;

	ret = FUNC3(plat->dev, FUNC0(variant->dma_bit_mask));
	if (ret) {
		FUNC2(plat->dev, "No suitable DMA available, err = %d\n", ret);
		return ret;
	}

	ret = variant->dwmac_set_phy_interface(plat);
	if (ret) {
		FUNC2(plat->dev, "failed to set phy interface, err = %d\n", ret);
		return ret;
	}

	ret = variant->dwmac_set_delay(plat);
	if (ret) {
		FUNC2(plat->dev, "failed to set delay value, err = %d\n", ret);
		return ret;
	}

	ret = FUNC1(variant->num_clks, plat->clks);
	if (ret) {
		FUNC2(plat->dev, "failed to enable clks, err = %d\n", ret);
		return ret;
	}

	FUNC4(&pdev->dev);
	FUNC5(&pdev->dev);

	return 0;
}