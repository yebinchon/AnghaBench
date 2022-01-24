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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mmc_omap_host {int nr_slots; int /*<<< orphan*/  mmc_omap_wq; scalar_t__ dma_rx; scalar_t__ dma_tx; int /*<<< orphan*/  iclk; int /*<<< orphan*/  fclk; int /*<<< orphan*/  irq; TYPE_1__* pdata; int /*<<< orphan*/ * slots; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* cleanup ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mmc_omap_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_omap_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct mmc_omap_host* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct mmc_omap_host *host = FUNC8(pdev);
	int i;

	FUNC0(host == NULL);

	for (i = 0; i < host->nr_slots; i++)
		FUNC7(host->slots[i]);

	if (host->pdata->cleanup)
		host->pdata->cleanup(&pdev->dev);

	FUNC6(host, 0);
	FUNC5(host->irq, host);
	FUNC2(host->fclk);
	FUNC1(host->iclk);
	FUNC2(host->iclk);

	if (host->dma_tx)
		FUNC4(host->dma_tx);
	if (host->dma_rx)
		FUNC4(host->dma_rx);

	FUNC3(host->mmc_omap_wq);

	return 0;
}