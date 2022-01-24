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
typedef  int /*<<< orphan*/  uint32_t ;
struct platform_device {int dummy; } ;
struct lpc32xx_nand_host {int /*<<< orphan*/  clk; int /*<<< orphan*/  io_base; int /*<<< orphan*/  dma_chan; int /*<<< orphan*/  nand_chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLCCFG_CE_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpc32xx_nand_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct lpc32xx_nand_host* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	uint32_t tmp;
	struct lpc32xx_nand_host *host = FUNC5(pdev);

	FUNC4(&host->nand_chip);
	FUNC2(host->dma_chan);

	/* Force CE high */
	tmp = FUNC6(FUNC0(host->io_base));
	tmp &= ~SLCCFG_CE_LOW;
	FUNC7(tmp, FUNC0(host->io_base));

	FUNC1(host->clk);
	FUNC3(host);

	return 0;
}