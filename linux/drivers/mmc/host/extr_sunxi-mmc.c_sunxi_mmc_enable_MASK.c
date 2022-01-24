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
struct sunxi_mmc_host {int /*<<< orphan*/  reset; int /*<<< orphan*/  clk_ahb; int /*<<< orphan*/  clk_mmc; int /*<<< orphan*/  clk_output; int /*<<< orphan*/  clk_sample; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sunxi_mmc_host*) ; 

__attribute__((used)) static int FUNC7(struct sunxi_mmc_host *host)
{
	int ret;

	if (!FUNC0(host->reset)) {
		ret = FUNC5(host->reset);
		if (ret) {
			FUNC3(host->dev, "Couldn't reset the MMC controller (%d)\n",
				ret);
			return ret;
		}
	}

	ret = FUNC2(host->clk_ahb);
	if (ret) {
		FUNC3(host->dev, "Couldn't enable the bus clocks (%d)\n", ret);
		goto error_assert_reset;
	}

	ret = FUNC2(host->clk_mmc);
	if (ret) {
		FUNC3(host->dev, "Enable mmc clk err %d\n", ret);
		goto error_disable_clk_ahb;
	}

	ret = FUNC2(host->clk_output);
	if (ret) {
		FUNC3(host->dev, "Enable output clk err %d\n", ret);
		goto error_disable_clk_mmc;
	}

	ret = FUNC2(host->clk_sample);
	if (ret) {
		FUNC3(host->dev, "Enable sample clk err %d\n", ret);
		goto error_disable_clk_output;
	}

	/*
	 * Sometimes the controller asserts the irq on boot for some reason,
	 * make sure the controller is in a sane state before enabling irqs.
	 */
	ret = FUNC6(host);
	if (ret)
		goto error_disable_clk_sample;

	return 0;

error_disable_clk_sample:
	FUNC1(host->clk_sample);
error_disable_clk_output:
	FUNC1(host->clk_output);
error_disable_clk_mmc:
	FUNC1(host->clk_mmc);
error_disable_clk_ahb:
	FUNC1(host->clk_ahb);
error_assert_reset:
	if (!FUNC0(host->reset))
		FUNC4(host->reset);
	return ret;
}