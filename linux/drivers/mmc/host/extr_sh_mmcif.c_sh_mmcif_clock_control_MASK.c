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
struct sh_mmcif_plat_data {int sup_pclk; } ;
struct sh_mmcif_host {int clkdiv_map; int /*<<< orphan*/  clk; } ;
struct device {struct sh_mmcif_plat_data* platform_data; } ;

/* Variables and functions */
 unsigned int CLK_CLEAR ; 
 unsigned int CLK_ENABLE ; 
 unsigned int CLK_SUP_PCLK ; 
 scalar_t__ FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  MMCIF_CE_CLK_CTRL ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sh_mmcif_host*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct sh_mmcif_host*,int /*<<< orphan*/ ,unsigned int) ; 
 struct device* FUNC8 (struct sh_mmcif_host*) ; 

__attribute__((used)) static void FUNC9(struct sh_mmcif_host *host, unsigned int clk)
{
	struct device *dev = FUNC8(host);
	struct sh_mmcif_plat_data *p = dev->platform_data;
	bool sup_pclk = p ? p->sup_pclk : false;
	unsigned int current_clk = FUNC1(host->clk);
	unsigned int clkdiv;

	FUNC6(host, MMCIF_CE_CLK_CTRL, CLK_ENABLE);
	FUNC6(host, MMCIF_CE_CLK_CTRL, CLK_CLEAR);

	if (!clk)
		return;

	if (host->clkdiv_map) {
		unsigned int freq, best_freq, myclk, div, diff_min, diff;
		int i;

		clkdiv = 0;
		diff_min = ~0;
		best_freq = 0;
		for (i = 31; i >= 0; i--) {
			if (!((1 << i) & host->clkdiv_map))
				continue;

			/*
			 * clk = parent_freq / div
			 * -> parent_freq = clk x div
			 */

			div = 1 << (i + 1);
			freq = FUNC2(host->clk, clk * div);
			myclk = freq / div;
			diff = (myclk > clk) ? myclk - clk : clk - myclk;

			if (diff <= diff_min) {
				best_freq = freq;
				clkdiv = i;
				diff_min = diff;
			}
		}

		FUNC4(dev, "clk %u/%u (%u, 0x%x)\n",
			(best_freq / (1 << (clkdiv + 1))), clk,
			best_freq, clkdiv);

		FUNC3(host->clk, best_freq);
		clkdiv = clkdiv << 16;
	} else if (sup_pclk && clk == current_clk) {
		clkdiv = CLK_SUP_PCLK;
	} else {
		clkdiv = (FUNC5(FUNC0(current_clk, clk) - 1) - 1) << 16;
	}

	FUNC7(host, MMCIF_CE_CLK_CTRL, CLK_CLEAR & clkdiv);
	FUNC7(host, MMCIF_CE_CLK_CTRL, CLK_ENABLE);
}