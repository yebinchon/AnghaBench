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
struct jz4740_mmc_host {scalar_t__ base; int /*<<< orphan*/  clk; TYPE_1__* mmc; } ;
struct TYPE_2__ {int /*<<< orphan*/  f_max; } ;

/* Variables and functions */
 scalar_t__ JZ_REG_MMC_CLKRT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jz4740_mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct jz4740_mmc_host *host, int rate)
{
	int div = 0;
	int real_rate;

	FUNC2(host);
	FUNC1(host->clk, host->mmc->f_max);

	real_rate = FUNC0(host->clk);

	while (real_rate > rate && div < 7) {
		++div;
		real_rate >>= 1;
	}

	FUNC3(div, host->base + JZ_REG_MMC_CLKRT);
	return real_rate;
}