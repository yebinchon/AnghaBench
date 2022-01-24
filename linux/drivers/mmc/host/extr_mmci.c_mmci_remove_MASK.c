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
struct variant_data {scalar_t__ mmcimask1; } ;
struct mmci_host {int /*<<< orphan*/  clk; scalar_t__ base; struct variant_data* variant; } ;
struct mmc_host {int dummy; } ;
struct amba_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ MMCICOMMAND ; 
 scalar_t__ MMCIDATACTRL ; 
 scalar_t__ MMCIMASK0 ; 
 scalar_t__ MMCIMASK1 ; 
 struct mmc_host* FUNC0 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 struct mmci_host* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmci_host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct amba_device *dev)
{
	struct mmc_host *mmc = FUNC0(dev);

	if (mmc) {
		struct mmci_host *host = FUNC3(mmc);
		struct variant_data *variant = host->variant;

		/*
		 * Undo pm_runtime_put() in probe.  We use the _sync
		 * version here so that we can access the primecell.
		 */
		FUNC6(&dev->dev);

		FUNC4(mmc);

		FUNC7(0, host->base + MMCIMASK0);

		if (variant->mmcimask1)
			FUNC7(0, host->base + MMCIMASK1);

		FUNC7(0, host->base + MMCICOMMAND);
		FUNC7(0, host->base + MMCIDATACTRL);

		FUNC5(host);
		FUNC1(host->clk);
		FUNC2(mmc);
	}

	return 0;
}