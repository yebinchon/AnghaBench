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
struct mvsd_host {int /*<<< orphan*/  clk; int /*<<< orphan*/  timer; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 struct mvsd_host* FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct mvsd_host*) ; 
 struct mmc_host* FUNC7 (struct platform_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct mmc_host *mmc = FUNC7(pdev);

	struct mvsd_host *host = FUNC4(mmc);

	FUNC5(mmc);
	FUNC2(&host->timer);
	FUNC6(host);

	if (!FUNC0(host->clk))
		FUNC1(host->clk);
	FUNC3(mmc);

	return 0;
}