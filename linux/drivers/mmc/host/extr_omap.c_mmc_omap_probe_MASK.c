#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_11__ {struct omap_mmc_platform_data* platform_data; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  id; } ;
struct omap_mmc_platform_data {int nr_slots; int (* init ) (TYPE_2__*) ;int /*<<< orphan*/  (* cleanup ) (TYPE_2__*) ;TYPE_1__* slots; } ;
struct mmc_omap_host {int irq; int dma_tx_burst; int dma_rx_burst; int nr_slots; int reg_shift; int /*<<< orphan*/ * iclk; int /*<<< orphan*/ * fclk; int /*<<< orphan*/ * dma_rx; int /*<<< orphan*/ * dma_tx; int /*<<< orphan*/  mmc_omap_wq; int /*<<< orphan*/ * slots; TYPE_2__* dev; int /*<<< orphan*/  phys_base; int /*<<< orphan*/  id; struct omap_mmc_platform_data* pdata; int /*<<< orphan*/  features; int /*<<< orphan*/  slot_wq; int /*<<< orphan*/  slot_lock; int /*<<< orphan*/  dma_lock; int /*<<< orphan*/  clk_timer; int /*<<< orphan*/  clk_lock; int /*<<< orphan*/  cmd_abort_timer; int /*<<< orphan*/  cmd_abort_work; int /*<<< orphan*/  send_stop_work; int /*<<< orphan*/  slot_release_work; int /*<<< orphan*/ * virt_base; } ;
struct TYPE_10__ {int /*<<< orphan*/  features; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_2__*,struct resource*) ; 
 struct mmc_omap_host* FUNC12 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 void* FUNC14 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int,struct mmc_omap_host*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 () ; 
 int /*<<< orphan*/  mmc_omap_abort_command ; 
 int /*<<< orphan*/  mmc_omap_clk_timer ; 
 int /*<<< orphan*/  mmc_omap_cmd_timer ; 
 int /*<<< orphan*/  mmc_omap_irq ; 
 int FUNC18 (struct mmc_omap_host*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmc_omap_send_stop_work ; 
 int /*<<< orphan*/  mmc_omap_slot_release_work ; 
 int FUNC20 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC21 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*,struct mmc_omap_host*) ; 
 int FUNC23 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mmc_omap_host*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC28(struct platform_device *pdev)
{
	struct omap_mmc_platform_data *pdata = pdev->dev.platform_data;
	struct mmc_omap_host *host = NULL;
	struct resource *res;
	int i, ret = 0;
	int irq;

	if (pdata == NULL) {
		FUNC9(&pdev->dev, "platform data missing\n");
		return -ENXIO;
	}
	if (pdata->nr_slots == 0) {
		FUNC9(&pdev->dev, "no slots\n");
		return -EPROBE_DEFER;
	}

	host = FUNC12(&pdev->dev, sizeof(struct mmc_omap_host),
			    GFP_KERNEL);
	if (host == NULL)
		return -ENOMEM;

	irq = FUNC20(pdev, 0);
	if (irq < 0)
		return -ENXIO;

	res = FUNC21(pdev, IORESOURCE_MEM, 0);
	host->virt_base = FUNC11(&pdev->dev, res);
	if (FUNC1(host->virt_base))
		return FUNC2(host->virt_base);

	FUNC0(&host->slot_release_work, mmc_omap_slot_release_work);
	FUNC0(&host->send_stop_work, mmc_omap_send_stop_work);

	FUNC0(&host->cmd_abort_work, mmc_omap_abort_command);
	FUNC27(&host->cmd_abort_timer, mmc_omap_cmd_timer, 0);

	FUNC24(&host->clk_lock);
	FUNC27(&host->clk_timer, mmc_omap_clk_timer, 0);

	FUNC24(&host->dma_lock);
	FUNC24(&host->slot_lock);
	FUNC16(&host->slot_wq);

	host->pdata = pdata;
	host->features = host->pdata->slots[0].features;
	host->dev = &pdev->dev;
	FUNC22(pdev, host);

	host->id = pdev->id;
	host->irq = irq;
	host->phys_base = res->start;
	host->iclk = FUNC6(&pdev->dev, "ick");
	if (FUNC1(host->iclk))
		return FUNC2(host->iclk);
	FUNC5(host->iclk);

	host->fclk = FUNC6(&pdev->dev, "fck");
	if (FUNC1(host->fclk)) {
		ret = FUNC2(host->fclk);
		goto err_free_iclk;
	}

	host->dma_tx_burst = -1;
	host->dma_rx_burst = -1;

	host->dma_tx = FUNC14(&pdev->dev, "tx");
	if (FUNC1(host->dma_tx)) {
		ret = FUNC2(host->dma_tx);
		if (ret == -EPROBE_DEFER) {
			FUNC7(host->fclk);
			goto err_free_iclk;
		}

		host->dma_tx = NULL;
		FUNC10(host->dev, "TX DMA channel request failed\n");
	}

	host->dma_rx = FUNC14(&pdev->dev, "rx");
	if (FUNC1(host->dma_rx)) {
		ret = FUNC2(host->dma_rx);
		if (ret == -EPROBE_DEFER) {
			if (host->dma_tx)
				FUNC13(host->dma_tx);
			FUNC7(host->fclk);
			goto err_free_iclk;
		}

		host->dma_rx = NULL;
		FUNC10(host->dev, "RX DMA channel request failed\n");
	}

	ret = FUNC23(host->irq, mmc_omap_irq, 0, DRIVER_NAME, host);
	if (ret)
		goto err_free_dma;

	if (pdata->init != NULL) {
		ret = pdata->init(&pdev->dev);
		if (ret < 0)
			goto err_free_irq;
	}

	host->nr_slots = pdata->nr_slots;
	host->reg_shift = (FUNC17() ? 1 : 2);

	host->mmc_omap_wq = FUNC3("mmc_omap", 0, 0);
	if (!host->mmc_omap_wq) {
		ret = -ENOMEM;
		goto err_plat_cleanup;
	}

	for (i = 0; i < pdata->nr_slots; i++) {
		ret = FUNC18(host, i);
		if (ret < 0) {
			while (--i >= 0)
				FUNC19(host->slots[i]);

			goto err_destroy_wq;
		}
	}

	return 0;

err_destroy_wq:
	FUNC8(host->mmc_omap_wq);
err_plat_cleanup:
	if (pdata->cleanup)
		pdata->cleanup(&pdev->dev);
err_free_irq:
	FUNC15(host->irq, host);
err_free_dma:
	if (host->dma_tx)
		FUNC13(host->dma_tx);
	if (host->dma_rx)
		FUNC13(host->dma_rx);
	FUNC7(host->fclk);
err_free_iclk:
	FUNC4(host->iclk);
	FUNC7(host->iclk);
	return ret;
}