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
struct stmmac_resources {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct plat_stmmacenet_data {void* stmmac_clk; void* pclk; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void *FUNC8(struct platform_device *pdev,
			   struct plat_stmmacenet_data *plat_dat,
			   struct stmmac_resources *stmmac_res)
{
	int err;

	plat_dat->stmmac_clk = FUNC7(&pdev->dev, "apb_pclk");
	if (FUNC2(plat_dat->stmmac_clk)) {
		FUNC6(&pdev->dev, "apb_pclk clock not found.\n");
		return FUNC0(plat_dat->stmmac_clk);
	}

	err = FUNC5(plat_dat->stmmac_clk);
	if (err < 0) {
		FUNC6(&pdev->dev, "failed to enable apb_pclk clock: %d\n",
			err);
		return FUNC1(err);
	}

	plat_dat->pclk = FUNC7(&pdev->dev, "phy_ref_clk");
	if (FUNC2(plat_dat->pclk)) {
		FUNC6(&pdev->dev, "phy_ref_clk clock not found.\n");
		err = FUNC3(plat_dat->pclk);
		goto disable;
	}

	err = FUNC5(plat_dat->pclk);
	if (err < 0) {
		FUNC6(&pdev->dev, "failed to enable phy_ref clock: %d\n",
			err);
		goto disable;
	}

	return NULL;

disable:
	FUNC4(plat_dat->stmmac_clk);
	return FUNC1(err);
}