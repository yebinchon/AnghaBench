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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device_id {int /*<<< orphan*/  driver_data; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  id_entry; int /*<<< orphan*/  name; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;
struct mmc_host {int caps; int ocr_avail; int max_segs; int max_seg_size; int max_blk_size; int max_blk_count; int max_req_size; int /*<<< orphan*/ * ops; } ;
struct mmc_davinci_host {scalar_t__ nr_sg; int mmc_irq; int sdio_irq; int /*<<< orphan*/  clk; scalar_t__ use_dma; struct mmc_host* mmc; int /*<<< orphan*/  version; int /*<<< orphan*/  mmc_input_clk; int /*<<< orphan*/  base; struct resource* mem_res; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_CCNT ; 
 scalar_t__ MAX_NR_SG ; 
 int MMC_CAP_4_BIT_DATA ; 
 int MMC_CAP_SDIO_IRQ ; 
 int MMC_CAP_WAIT_WHILE_BUSY ; 
 int MMC_VDD_32_33 ; 
 int MMC_VDD_33_34 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mmc_davinci_host*) ; 
 int /*<<< orphan*/  davinci_mmc_dt_ids ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_davinci_host*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mmc_davinci_host*) ; 
 struct resource* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mmc_davinci_host*) ; 
 int FUNC15 (struct mmc_host*) ; 
 struct mmc_host* FUNC16 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct mmc_davinci_host*) ; 
 int FUNC18 (struct mmc_davinci_host*) ; 
 int /*<<< orphan*/  mmc_davinci_irq ; 
 int /*<<< orphan*/  mmc_davinci_ops ; 
 int FUNC19 (struct mmc_host*) ; 
 int /*<<< orphan*/  mmc_davinci_sdio_irq ; 
 int /*<<< orphan*/  FUNC20 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC21 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC22 (struct mmc_host*) ; 
 int FUNC23 (struct mmc_host*) ; 
 struct mmc_davinci_host* FUNC24 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC25 (struct mmc_host*) ; 
 struct of_device_id* FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct platform_device_id* FUNC27 (struct platform_device*) ; 
 void* FUNC28 (struct platform_device*,int) ; 
 struct resource* FUNC29 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct platform_device*,struct mmc_davinci_host*) ; 
 int /*<<< orphan*/  FUNC31 (struct resource*,int /*<<< orphan*/ ) ; 
 size_t FUNC32 (struct resource*) ; 
 int rw_threshold ; 
 scalar_t__ use_dma ; 

__attribute__((used)) static int FUNC33(struct platform_device *pdev)
{
	const struct of_device_id *match;
	struct mmc_davinci_host *host = NULL;
	struct mmc_host *mmc = NULL;
	struct resource *r, *mem = NULL;
	int ret, irq;
	size_t mem_size;
	const struct platform_device_id *id_entry;

	r = FUNC29(pdev, IORESOURCE_MEM, 0);
	if (!r)
		return -ENODEV;
	irq = FUNC28(pdev, 0);
	if (irq < 0)
		return irq;

	mem_size = FUNC32(r);
	mem = FUNC13(&pdev->dev, r->start, mem_size,
				      pdev->name);
	if (!mem)
		return -EBUSY;

	mmc = FUNC16(sizeof(struct mmc_davinci_host), &pdev->dev);
	if (!mmc)
		return -ENOMEM;

	host = FUNC24(mmc);
	host->mmc = mmc;	/* Important */

	host->mem_res = mem;
	host->base = FUNC11(&pdev->dev, mem->start, mem_size);
	if (!host->base) {
		ret = -ENOMEM;
		goto ioremap_fail;
	}

	host->clk = FUNC10(&pdev->dev, NULL);
	if (FUNC0(host->clk)) {
		ret = FUNC1(host->clk);
		goto clk_get_fail;
	}
	ret = FUNC4(host->clk);
	if (ret)
		goto clk_prepare_enable_fail;

	host->mmc_input_clk = FUNC3(host->clk);

	match = FUNC26(davinci_mmc_dt_ids, &pdev->dev);
	if (match) {
		pdev->id_entry = match->data;
		ret = FUNC23(mmc);
		if (ret) {
			if (ret != -EPROBE_DEFER)
				FUNC8(&pdev->dev,
					"could not parse of data: %d\n", ret);
			goto parse_fail;
		}
	} else {
		ret = FUNC19(mmc);
		if (ret) {
			FUNC8(&pdev->dev,
				"could not parse platform data: %d\n", ret);
			goto parse_fail;
	}	}

	if (host->nr_sg > MAX_NR_SG || !host->nr_sg)
		host->nr_sg = MAX_NR_SG;

	FUNC14(host);

	host->use_dma = use_dma;
	host->mmc_irq = irq;
	host->sdio_irq = FUNC28(pdev, 1);

	if (host->use_dma) {
		ret = FUNC5(host);
		if (ret == -EPROBE_DEFER)
			goto dma_probe_defer;
		else if (ret)
			host->use_dma = 0;
	}

	mmc->caps |= MMC_CAP_WAIT_WHILE_BUSY;

	id_entry = FUNC27(pdev);
	if (id_entry)
		host->version = id_entry->driver_data;

	mmc->ops = &mmc_davinci_ops;
	mmc->ocr_avail = MMC_VDD_32_33 | MMC_VDD_33_34;

	/* With no iommu coalescing pages, each phys_seg is a hw_seg.
	 * Each hw_seg uses one EDMA parameter RAM slot, always one
	 * channel and then usually some linked slots.
	 */
	mmc->max_segs		= MAX_NR_SG;

	/* EDMA limit per hw segment (one or two MBytes) */
	mmc->max_seg_size	= MAX_CCNT * rw_threshold;

	/* MMC/SD controller limits for multiblock requests */
	mmc->max_blk_size	= 4095;  /* BLEN is 12 bits */
	mmc->max_blk_count	= 65535; /* NBLK is 16 bits */
	mmc->max_req_size	= mmc->max_blk_size * mmc->max_blk_count;

	FUNC7(FUNC20(host->mmc), "max_segs=%d\n", mmc->max_segs);
	FUNC7(FUNC20(host->mmc), "max_blk_size=%d\n", mmc->max_blk_size);
	FUNC7(FUNC20(host->mmc), "max_req_size=%d\n", mmc->max_req_size);
	FUNC7(FUNC20(host->mmc), "max_seg_size=%d\n", mmc->max_seg_size);

	FUNC30(pdev, host);

	ret = FUNC18(host);
	if (ret) {
		FUNC8(&pdev->dev, "failed to register cpufreq\n");
		goto cpu_freq_fail;
	}

	ret = FUNC15(mmc);
	if (ret < 0)
		goto mmc_add_host_fail;

	ret = FUNC12(&pdev->dev, irq, mmc_davinci_irq, 0,
			       FUNC22(mmc), host);
	if (ret)
		goto request_irq_fail;

	if (host->sdio_irq >= 0) {
		ret = FUNC12(&pdev->dev, host->sdio_irq,
				       mmc_davinci_sdio_irq, 0,
				       FUNC22(mmc), host);
		if (!ret)
			mmc->caps |= MMC_CAP_SDIO_IRQ;
	}

	FUNC31(mem, FUNC22(mmc));

	FUNC9(FUNC20(host->mmc), "Using %s, %d-bit mode\n",
		host->use_dma ? "DMA" : "PIO",
		(mmc->caps & MMC_CAP_4_BIT_DATA) ? 4 : 1);

	return 0;

request_irq_fail:
	FUNC25(mmc);
mmc_add_host_fail:
	FUNC17(host);
cpu_freq_fail:
	FUNC6(host);
parse_fail:
dma_probe_defer:
	FUNC2(host->clk);
clk_prepare_enable_fail:
clk_get_fail:
ioremap_fail:
	FUNC21(mmc);

	return ret;
}