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
typedef  int uint32_t ;
struct lpc32xx_nand_host {int /*<<< orphan*/  io_base; TYPE_1__* ncfg; int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {int tcea_delay; int busy_delay; int nand_ta; int rd_high; int rd_low; int wr_high; int wr_low; } ;

/* Variables and functions */
 int MLCCEH_NORMAL ; 
 int MLCCMD_RESET ; 
 int MLCICR_LARGEBLOCK ; 
 int MLCICR_LONGADDR ; 
 int MLCIRQ_CONTROLLER_READY ; 
 int MLCIRQ_NAND_READY ; 
 int /*<<< orphan*/  MLCLOCKPR_MAGIC ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct lpc32xx_nand_host *host)
{
	uint32_t clkrate, tmp;

	/* Reset MLC controller */
	FUNC16(MLCCMD_RESET, FUNC8(host->io_base));
	FUNC14(1000);

	/* Get base clock for MLC block */
	clkrate = FUNC13(host->clk);
	if (clkrate == 0)
		clkrate = 104000000;

	/* Unlock MLC_ICR
	 * (among others, will be locked again automatically) */
	FUNC17(MLCLOCKPR_MAGIC, FUNC11(host->io_base));

	/* Configure MLC Controller: Large Block, 5 Byte Address */
	tmp = MLCICR_LARGEBLOCK | MLCICR_LONGADDR;
	FUNC16(tmp, FUNC9(host->io_base));

	/* Unlock MLC_TIME_REG
	 * (among others, will be locked again automatically) */
	FUNC17(MLCLOCKPR_MAGIC, FUNC11(host->io_base));

	/* Compute clock setup values, see LPC and NAND manual */
	tmp = 0;
	tmp |= FUNC4(clkrate / host->ncfg->tcea_delay + 1);
	tmp |= FUNC0(clkrate / host->ncfg->busy_delay + 1);
	tmp |= FUNC1(clkrate / host->ncfg->nand_ta + 1);
	tmp |= FUNC2(clkrate / host->ncfg->rd_high + 1);
	tmp |= FUNC3(clkrate / host->ncfg->rd_low);
	tmp |= FUNC5(clkrate / host->ncfg->wr_high + 1);
	tmp |= FUNC6(clkrate / host->ncfg->wr_low);
	FUNC16(tmp, FUNC12(host->io_base));

	/* Enable IRQ for CONTROLLER_READY and NAND_READY */
	FUNC15(MLCIRQ_CONTROLLER_READY | MLCIRQ_NAND_READY,
			FUNC10(host->io_base));

	/* Normal nCE operation: nCE controlled by controller */
	FUNC16(MLCCEH_NORMAL, FUNC7(host->io_base));
}