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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct mmc_host {int f_max; int f_min; int ocr_avail; int max_blk_size; int max_blk_count; int max_req_size; int max_segs; int max_seg_size; int caps; int /*<<< orphan*/ * ops; } ;
struct jz4740_mmc_host {int version; int irq; int use_dma; int /*<<< orphan*/  timeout_timer; int /*<<< orphan*/  irq_mask; int /*<<< orphan*/  lock; struct platform_device* pdev; struct mmc_host* mmc; int /*<<< orphan*/  base; int /*<<< orphan*/  mem_res; int /*<<< orphan*/  clk; } ;
typedef  enum jz4740_mmc_version { ____Placeholder_jz4740_mmc_version } jz4740_mmc_version ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int JZ_MMC_CLK_RATE ; 
 int JZ_MMC_JZ4740 ; 
 int MMC_CAP_4_BIT_DATA ; 
 int MMC_VDD_32_33 ; 
 int MMC_VDD_33_34 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,struct jz4740_mmc_host*) ; 
 int FUNC8 (struct jz4740_mmc_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct jz4740_mmc_host*) ; 
 int /*<<< orphan*/  jz4740_mmc_of_match ; 
 int /*<<< orphan*/  jz4740_mmc_ops ; 
 int /*<<< orphan*/  FUNC10 (struct jz4740_mmc_host*) ; 
 int /*<<< orphan*/  FUNC11 (struct jz4740_mmc_host*) ; 
 int /*<<< orphan*/  jz4740_mmc_timeout ; 
 int /*<<< orphan*/  jz_mmc_irq ; 
 int /*<<< orphan*/  jz_mmc_irq_worker ; 
 int FUNC12 (struct mmc_host*) ; 
 struct mmc_host* FUNC13 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct mmc_host*) ; 
 int FUNC15 (struct mmc_host*) ; 
 struct jz4740_mmc_host* FUNC16 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC17 (struct mmc_host*) ; 
 struct of_device_id* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct jz4740_mmc_host*) ; 
 int FUNC22 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct jz4740_mmc_host*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(struct platform_device* pdev)
{
	int ret;
	struct mmc_host *mmc;
	struct jz4740_mmc_host *host;
	const struct of_device_id *match;

	mmc = FUNC13(sizeof(struct jz4740_mmc_host), &pdev->dev);
	if (!mmc) {
		FUNC2(&pdev->dev, "Failed to alloc mmc host structure\n");
		return -ENOMEM;
	}

	host = FUNC16(mmc);

	match = FUNC18(jz4740_mmc_of_match, &pdev->dev);
	if (match) {
		host->version = (enum jz4740_mmc_version)match->data;
	} else {
		/* JZ4740 should be the only one using legacy probe */
		host->version = JZ_MMC_JZ4740;
	}

	ret = FUNC15(mmc);
	if (ret) {
		if (ret != -EPROBE_DEFER)
			FUNC2(&pdev->dev,
				"could not parse device properties: %d\n", ret);
		goto err_free_host;
	}

	FUNC17(mmc);

	host->irq = FUNC19(pdev, 0);
	if (host->irq < 0) {
		ret = host->irq;
		goto err_free_host;
	}

	host->clk = FUNC5(&pdev->dev, "mmc");
	if (FUNC0(host->clk)) {
		ret = FUNC1(host->clk);
		FUNC2(&pdev->dev, "Failed to get mmc clock\n");
		goto err_free_host;
	}

	host->mem_res = FUNC20(pdev, IORESOURCE_MEM, 0);
	host->base = FUNC6(&pdev->dev, host->mem_res);
	if (FUNC0(host->base)) {
		ret = FUNC1(host->base);
		FUNC2(&pdev->dev, "Failed to ioremap base memory\n");
		goto err_free_host;
	}

	mmc->ops = &jz4740_mmc_ops;
	if (!mmc->f_max)
		mmc->f_max = JZ_MMC_CLK_RATE;
	mmc->f_min = mmc->f_max / 128;
	mmc->ocr_avail = MMC_VDD_32_33 | MMC_VDD_33_34;

	mmc->max_blk_size = (1 << 10) - 1;
	mmc->max_blk_count = (1 << 15) - 1;
	mmc->max_req_size = mmc->max_blk_size * mmc->max_blk_count;

	mmc->max_segs = 128;
	mmc->max_seg_size = mmc->max_req_size;

	host->mmc = mmc;
	host->pdev = pdev;
	FUNC23(&host->lock);
	host->irq_mask = ~0;

	FUNC11(host);

	ret = FUNC22(host->irq, jz_mmc_irq, jz_mmc_irq_worker, 0,
			FUNC4(&pdev->dev), host);
	if (ret) {
		FUNC2(&pdev->dev, "Failed to request irq: %d\n", ret);
		goto err_free_host;
	}

	FUNC9(host);
	FUNC24(&host->timeout_timer, jz4740_mmc_timeout, 0);

	ret = FUNC8(host);
	if (ret == -EPROBE_DEFER)
		goto err_free_irq;
	host->use_dma = !ret;

	FUNC21(pdev, host);
	ret = FUNC12(mmc);

	if (ret) {
		FUNC2(&pdev->dev, "Failed to add mmc host: %d\n", ret);
		goto err_release_dma;
	}
	FUNC3(&pdev->dev, "JZ SD/MMC card driver registered\n");

	FUNC3(&pdev->dev, "Using %s, %d-bit mode\n",
		 host->use_dma ? "DMA" : "PIO",
		 (mmc->caps & MMC_CAP_4_BIT_DATA) ? 4 : 1);

	return 0;

err_release_dma:
	if (host->use_dma)
		FUNC10(host);
err_free_irq:
	FUNC7(host->irq, host);
err_free_host:
	FUNC14(mmc);

	return ret;
}