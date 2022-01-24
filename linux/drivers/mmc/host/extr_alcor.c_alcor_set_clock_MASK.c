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
typedef  int u8 ;
typedef  int u16 ;
struct alcor_sdmmc_host {int /*<<< orphan*/  dev; struct alcor_pci_priv* alcor_pci; } ;
struct alcor_pll_conf {unsigned int min_div; unsigned int max_div; int clk_src_reg; int /*<<< orphan*/  clk_src_freq; } ;
struct alcor_pci_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct alcor_pll_conf*) ; 
 int AU6601_CLK_ENABLE ; 
 int /*<<< orphan*/  AU6601_CLK_SELECT ; 
 void* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 struct alcor_pll_conf* alcor_pll_cfg ; 
 int /*<<< orphan*/  FUNC3 (struct alcor_pci_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int,int,int,int) ; 

__attribute__((used)) static void FUNC5(struct alcor_sdmmc_host *host, unsigned int clock)
{
	struct alcor_pci_priv *priv = host->alcor_pci;
	int i, diff = 0x7fffffff, tmp_clock = 0;
	u16 clk_src = 0;
	u8 clk_div = 0;

	if (clock == 0) {
		FUNC3(priv, 0, AU6601_CLK_SELECT);
		return;
	}

	for (i = 0; i < FUNC0(alcor_pll_cfg); i++) {
		unsigned int tmp_div, tmp_diff;
		const struct alcor_pll_conf *cfg = &alcor_pll_cfg[i];

		tmp_div = FUNC1(cfg->clk_src_freq, clock);
		if (cfg->min_div > tmp_div || tmp_div > cfg->max_div)
			continue;

		tmp_clock = FUNC1(cfg->clk_src_freq, tmp_div);
		tmp_diff = FUNC2(clock - tmp_clock);

		if (tmp_diff < diff) {
			diff = tmp_diff;
			clk_src = cfg->clk_src_reg;
			clk_div = tmp_div;
		}
	}

	clk_src |= ((clk_div - 1) << 8);
	clk_src |= AU6601_CLK_ENABLE;

	FUNC4(host->dev, "set freq %d cal freq %d, use div %d, mod %x\n",
			clock, tmp_clock, clk_div, clk_src);

	FUNC3(priv, clk_src, AU6601_CLK_SELECT);

}