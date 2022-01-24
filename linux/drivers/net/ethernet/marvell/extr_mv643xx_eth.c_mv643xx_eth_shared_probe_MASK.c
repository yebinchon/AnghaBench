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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mv643xx_eth_shared_private {int tx_csum_limit; int /*<<< orphan*/  clk; int /*<<< orphan*/ * base; } ;
struct mv643xx_eth_shared_platform_data {int tx_csum_limit; } ;
struct mbus_dram_target_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mv643xx_eth_shared_platform_data* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mv643xx_eth_shared_private* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mv643xx_eth_shared_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct mv643xx_eth_shared_private*,struct mbus_dram_target_info const*) ; 
 int /*<<< orphan*/  mv643xx_eth_driver_version ; 
 int FUNC9 (struct platform_device*) ; 
 struct mbus_dram_target_info* FUNC10 () ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct mv643xx_eth_shared_private*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct resource*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	static int mv643xx_eth_version_printed;
	struct mv643xx_eth_shared_platform_data *pd;
	struct mv643xx_eth_shared_private *msp;
	const struct mbus_dram_target_info *dram;
	struct resource *res;
	int ret;

	if (!mv643xx_eth_version_printed++)
		FUNC13("MV-643xx 10/100/1000 ethernet driver version %s\n",
			  mv643xx_eth_driver_version);

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	if (res == NULL)
		return -EINVAL;

	msp = FUNC6(&pdev->dev, sizeof(*msp), GFP_KERNEL);
	if (msp == NULL)
		return -ENOMEM;
	FUNC12(pdev, msp);

	msp->base = FUNC5(&pdev->dev, res->start, FUNC14(res));
	if (msp->base == NULL)
		return -ENOMEM;

	msp->clk = FUNC4(&pdev->dev, NULL);
	if (!FUNC0(msp->clk))
		FUNC2(msp->clk);

	/*
	 * (Re-)program MBUS remapping windows if we are asked to.
	 */
	dram = FUNC10();
	if (dram)
		FUNC8(msp, dram);

	ret = FUNC9(pdev);
	if (ret)
		goto err_put_clk;
	pd = FUNC3(&pdev->dev);

	msp->tx_csum_limit = (pd != NULL && pd->tx_csum_limit) ?
					pd->tx_csum_limit : 9 * 1024;
	FUNC7(msp);

	return 0;

err_put_clk:
	if (!FUNC0(msp->clk))
		FUNC1(msp->clk);
	return ret;
}