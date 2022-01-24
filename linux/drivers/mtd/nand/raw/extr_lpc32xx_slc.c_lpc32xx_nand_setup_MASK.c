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
typedef  scalar_t__ uint32_t ;
struct lpc32xx_nand_host {int /*<<< orphan*/  io_base; TYPE_1__* ncfg; int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  rsetup; int /*<<< orphan*/  rhold; int /*<<< orphan*/  rwidth; int /*<<< orphan*/  rdr_clks; int /*<<< orphan*/  wsetup; int /*<<< orphan*/  whold; int /*<<< orphan*/  wwidth; int /*<<< orphan*/  wdr_clks; } ;

/* Variables and functions */
 scalar_t__ LPC32XX_DEF_BUS_RATE ; 
 scalar_t__ SLCCTRL_SW_RESET ; 
 scalar_t__ SLCSTAT_INT_RDY_EN ; 
 scalar_t__ SLCSTAT_INT_TC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct lpc32xx_nand_host *host)
{
	uint32_t clkrate, tmp;

	/* Reset SLC controller */
	FUNC15(SLCCTRL_SW_RESET, FUNC9(host->io_base));
	FUNC14(1000);

	/* Basic setup */
	FUNC15(0, FUNC8(host->io_base));
	FUNC15(0, FUNC11(host->io_base));
	FUNC15((SLCSTAT_INT_TC | SLCSTAT_INT_RDY_EN),
		FUNC10(host->io_base));

	/* Get base clock for SLC block */
	clkrate = FUNC13(host->clk);
	if (clkrate == 0)
		clkrate = LPC32XX_DEF_BUS_RATE;

	/* Compute clock setup values */
	tmp = FUNC4(host->ncfg->wdr_clks) |
		FUNC7(clkrate, host->ncfg->wwidth) |
		FUNC5(clkrate, host->ncfg->whold) |
		FUNC6(clkrate, host->ncfg->wsetup) |
		FUNC0(host->ncfg->rdr_clks) |
		FUNC3(clkrate, host->ncfg->rwidth) |
		FUNC1(clkrate, host->ncfg->rhold) |
		FUNC2(clkrate, host->ncfg->rsetup);
	FUNC15(tmp, FUNC12(host->io_base));
}