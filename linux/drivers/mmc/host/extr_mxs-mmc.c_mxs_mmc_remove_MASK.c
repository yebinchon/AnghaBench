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
struct mxs_ssp {int /*<<< orphan*/  clk; scalar_t__ dmach; } ;
struct mxs_mmc_host {struct mxs_ssp ssp; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 struct mxs_mmc_host* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 struct mmc_host* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct mmc_host *mmc = FUNC5(pdev);
	struct mxs_mmc_host *host = FUNC3(mmc);
	struct mxs_ssp *ssp = &host->ssp;

	FUNC4(mmc);

	if (ssp->dmach)
		FUNC1(ssp->dmach);

	FUNC0(ssp->clk);

	FUNC2(mmc);

	return 0;
}