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
struct sh_mmcif_host {int clkdiv_map; TYPE_1__* mmc; int /*<<< orphan*/  clk; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int f_max; unsigned int f_min; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,unsigned int,unsigned int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 struct device* FUNC5 (struct sh_mmcif_host*) ; 

__attribute__((used)) static void FUNC6(struct sh_mmcif_host *host)
{
	struct device *dev = FUNC5(host);

	if (host->mmc->f_max) {
		unsigned int f_max, f_min = 0, f_min_old;

		f_max = host->mmc->f_max;
		for (f_min_old = f_max; f_min_old > 2;) {
			f_min = FUNC1(host->clk, f_min_old / 2);
			if (f_min == f_min_old)
				break;
			f_min_old = f_min;
		}

		/*
		 * This driver assumes this SoC is R-Car Gen2 or later
		 */
		host->clkdiv_map = 0x3ff;

		host->mmc->f_max = f_max / (1 << FUNC3(host->clkdiv_map));
		host->mmc->f_min = f_min / (1 << FUNC4(host->clkdiv_map));
	} else {
		unsigned int clk = FUNC0(host->clk);

		host->mmc->f_max = clk / 2;
		host->mmc->f_min = clk / 512;
	}

	FUNC2(dev, "clk max/min = %d/%d\n",
		host->mmc->f_max, host->mmc->f_min);
}