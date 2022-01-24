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
struct sunxi_mmc_host {int /*<<< orphan*/  sg_dma; int /*<<< orphan*/  sg_cpu; int /*<<< orphan*/  irq; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 struct sunxi_mmc_host* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 struct mmc_host* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sunxi_mmc_host*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct mmc_host	*mmc = FUNC5(pdev);
	struct sunxi_mmc_host *host = FUNC3(mmc);

	FUNC4(mmc);
	FUNC6(&pdev->dev);
	FUNC0(host->irq);
	FUNC7(host);
	FUNC1(&pdev->dev, PAGE_SIZE, host->sg_cpu, host->sg_dma);
	FUNC2(mmc);

	return 0;
}