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
struct platform_device {int dummy; } ;
struct meson_mx_mmc_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/  core_clk; int /*<<< orphan*/  cfg_div_clk; int /*<<< orphan*/  cmd_timeout; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 struct meson_mx_mmc_host* FUNC6 (struct platform_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct meson_mx_mmc_host *host = FUNC6(pdev);
	struct device *slot_dev = FUNC2(host->mmc);

	FUNC1(&host->cmd_timeout);

	FUNC4(host->mmc);

	FUNC5(slot_dev, NULL);

	FUNC0(host->cfg_div_clk);
	FUNC0(host->core_clk);

	FUNC3(host->mmc);

	return 0;
}