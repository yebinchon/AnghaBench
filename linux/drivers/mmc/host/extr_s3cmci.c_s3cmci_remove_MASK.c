#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct s3cmci_host {TYPE_2__* mem; int /*<<< orphan*/  base; int /*<<< orphan*/  irq; int /*<<< orphan*/  dma; int /*<<< orphan*/  pio_tasklet; int /*<<< orphan*/  clk; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mmc_host {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct s3cmci_host*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*) ; 
 struct s3cmci_host* FUNC7 (struct mmc_host*) ; 
 struct mmc_host* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (struct s3cmci_host*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct mmc_host		*mmc  = FUNC8(pdev);
	struct s3cmci_host	*host = FUNC7(mmc);
	int i;

	FUNC12(pdev);

	FUNC1(host->clk);

	FUNC13(&host->pio_tasklet);

	if (FUNC11(host))
		FUNC2(host->dma);

	FUNC3(host->irq, host);

	if (!pdev->dev.of_node)
		for (i = FUNC0(5); i <= FUNC0(10); i++)
			FUNC4(i);

	FUNC5(host->base);
	FUNC9(host->mem->start, FUNC10(host->mem));

	FUNC6(mmc);
	return 0;
}