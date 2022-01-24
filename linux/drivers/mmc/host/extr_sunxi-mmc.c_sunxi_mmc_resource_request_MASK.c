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
struct sunxi_mmc_host {scalar_t__ irq; void* reset; void* clk_sample; void* clk_output; TYPE_1__* cfg; void* clk_mmc; void* clk_ahb; void* reg_base; int /*<<< orphan*/  mmc; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ clk_delays; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct sunxi_mmc_host*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sunxi_mmc_host*) ; 
 int FUNC12 (struct sunxi_mmc_host*) ; 
 int /*<<< orphan*/  sunxi_mmc_handle_manual_stop ; 
 int /*<<< orphan*/  sunxi_mmc_irq ; 

__attribute__((used)) static int FUNC13(struct sunxi_mmc_host *host,
				      struct platform_device *pdev)
{
	int ret;

	host->cfg = FUNC8(&pdev->dev);
	if (!host->cfg)
		return -EINVAL;

	ret = FUNC7(host->mmc);
	if (ret)
		return ret;

	host->reg_base = FUNC4(&pdev->dev,
			      FUNC10(pdev, IORESOURCE_MEM, 0));
	if (FUNC0(host->reg_base))
		return FUNC1(host->reg_base);

	host->clk_ahb = FUNC3(&pdev->dev, "ahb");
	if (FUNC0(host->clk_ahb)) {
		FUNC2(&pdev->dev, "Could not get ahb clock\n");
		return FUNC1(host->clk_ahb);
	}

	host->clk_mmc = FUNC3(&pdev->dev, "mmc");
	if (FUNC0(host->clk_mmc)) {
		FUNC2(&pdev->dev, "Could not get mmc clock\n");
		return FUNC1(host->clk_mmc);
	}

	if (host->cfg->clk_delays) {
		host->clk_output = FUNC3(&pdev->dev, "output");
		if (FUNC0(host->clk_output)) {
			FUNC2(&pdev->dev, "Could not get output clock\n");
			return FUNC1(host->clk_output);
		}

		host->clk_sample = FUNC3(&pdev->dev, "sample");
		if (FUNC0(host->clk_sample)) {
			FUNC2(&pdev->dev, "Could not get sample clock\n");
			return FUNC1(host->clk_sample);
		}
	}

	host->reset = FUNC6(&pdev->dev,
								"ahb");
	if (FUNC1(host->reset) == -EPROBE_DEFER)
		return FUNC1(host->reset);

	ret = FUNC12(host);
	if (ret)
		return ret;

	host->irq = FUNC9(pdev, 0);
	if (host->irq <= 0) {
		ret = -EINVAL;
		goto error_disable_mmc;
	}

	return FUNC5(&pdev->dev, host->irq, sunxi_mmc_irq,
			sunxi_mmc_handle_manual_stop, 0, "sunxi-mmc", host);

error_disable_mmc:
	FUNC11(host);
	return ret;
}