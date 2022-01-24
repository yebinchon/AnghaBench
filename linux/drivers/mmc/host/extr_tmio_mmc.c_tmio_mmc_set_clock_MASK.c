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
typedef  int u32 ;
struct tmio_mmc_host {int /*<<< orphan*/  pdev; TYPE_1__* pdata; } ;
struct TYPE_2__ {unsigned int hclk; int /*<<< orphan*/  (* set_clk_div ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int CLK_CTL_DIV_MASK ; 
 int CLK_CTL_SCLKEN ; 
 int /*<<< orphan*/  CTL_SD_CARD_CLK_CTL ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tmio_mmc_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct tmio_mmc_host *host,
			       unsigned int new_clock)
{
	unsigned int divisor;
	u32 clk = 0;
	int clk_sel;

	if (new_clock == 0) {
		FUNC5(host);
		return;
	}

	divisor = host->pdata->hclk / new_clock;

	/* bit7 set: 1/512, ... bit0 set: 1/4, all bits clear: 1/2 */
	clk_sel = (divisor <= 1);
	clk = clk_sel ? 0 : (FUNC0(divisor) >> 2);

	host->pdata->set_clk_div(host->pdev, clk_sel);

	FUNC2(host, CTL_SD_CARD_CLK_CTL, ~CLK_CTL_SCLKEN &
			FUNC1(host, CTL_SD_CARD_CLK_CTL));
	FUNC2(host, CTL_SD_CARD_CLK_CTL, clk & CLK_CTL_DIV_MASK);
	FUNC6(10000, 11000);

	FUNC4(host);
}