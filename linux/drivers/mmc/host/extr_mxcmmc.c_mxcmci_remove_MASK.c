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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mxcmci_host {int /*<<< orphan*/  clk_ipg; int /*<<< orphan*/  clk_per; scalar_t__ dma; TYPE_1__* pdata; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* exit ) (int /*<<< orphan*/ *,struct mmc_host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 struct mxcmci_host* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 struct mmc_host* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct mmc_host*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct mmc_host *mmc = FUNC5(pdev);
	struct mxcmci_host *host = FUNC3(mmc);

	FUNC4(mmc);

	if (host->pdata && host->pdata->exit)
		host->pdata->exit(&pdev->dev, mmc);

	if (host->dma)
		FUNC1(host->dma);

	FUNC0(host->clk_per);
	FUNC0(host->clk_ipg);

	FUNC2(mmc);

	return 0;
}