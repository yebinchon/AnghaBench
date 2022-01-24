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
struct sh_mmcif_host {int dying; int /*<<< orphan*/  mmc; int /*<<< orphan*/  clk; int /*<<< orphan*/  timeout_work; int /*<<< orphan*/  addr; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MASK_ALL ; 
 int /*<<< orphan*/  MMCIF_CE_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct sh_mmcif_host* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct sh_mmcif_host *host = FUNC6(pdev);

	host->dying = true;
	FUNC2(host->clk);
	FUNC8(&pdev->dev);

	FUNC3(&pdev->dev);

	FUNC5(host->mmc);
	FUNC10(host->addr, MMCIF_CE_INT_MASK, MASK_ALL);

	/*
	 * FIXME: cancel_delayed_work(_sync)() and free_irq() race with the
	 * mmc_remove_host() call above. But swapping order doesn't help either
	 * (a query on the linux-mmc mailing list didn't bring any replies).
	 */
	FUNC0(&host->timeout_work);

	FUNC1(host->clk);
	FUNC4(host->mmc);
	FUNC9(&pdev->dev);
	FUNC7(&pdev->dev);

	return 0;
}