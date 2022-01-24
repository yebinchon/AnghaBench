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
struct sunxi_mmc_host {int /*<<< orphan*/  reset; int /*<<< orphan*/  clk_ahb; int /*<<< orphan*/  clk_mmc; int /*<<< orphan*/  clk_output; int /*<<< orphan*/  clk_sample; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sunxi_mmc_host*) ; 

__attribute__((used)) static void FUNC4(struct sunxi_mmc_host *host)
{
	FUNC3(host);

	FUNC1(host->clk_sample);
	FUNC1(host->clk_output);
	FUNC1(host->clk_mmc);
	FUNC1(host->clk_ahb);

	if (!FUNC0(host->reset))
		FUNC2(host->reset);
}