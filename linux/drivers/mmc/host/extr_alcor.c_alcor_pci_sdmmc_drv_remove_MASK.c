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
struct mmc_host {int dummy; } ;
struct alcor_sdmmc_host {int /*<<< orphan*/  timeout_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alcor_sdmmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct alcor_sdmmc_host*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct alcor_sdmmc_host* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 struct mmc_host* FUNC5 (struct alcor_sdmmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct alcor_sdmmc_host *host = FUNC3(&pdev->dev);
	struct mmc_host *mmc = FUNC5(host);

	if (FUNC2(&host->timeout_work))
		FUNC1(host, 0);

	FUNC0(host);
	FUNC6(mmc);
	FUNC4(mmc);

	return 0;
}