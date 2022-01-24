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
struct platform_device {int dummy; } ;
struct lpc32xx_nand_host {TYPE_1__* ncfg; int /*<<< orphan*/  clk; int /*<<< orphan*/  dma_chan; int /*<<< orphan*/  irq; int /*<<< orphan*/  nand_chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  wp_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct lpc32xx_nand_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lpc32xx_nand_host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct lpc32xx_nand_host* FUNC7 (struct platform_device*) ; 
 scalar_t__ use_dma ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct lpc32xx_nand_host *host = FUNC7(pdev);

	FUNC6(&host->nand_chip);
	FUNC3(host->irq, host);
	if (use_dma)
		FUNC2(host->dma_chan);

	FUNC0(host->clk);
	FUNC1(host->clk);

	FUNC5(host);
	FUNC4(host->ncfg->wp_gpio);

	return 0;
}