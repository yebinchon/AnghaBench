#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct s3cmci_host {int clk_div; scalar_t__ irq; int irq_state; int clk_rate; TYPE_2__* mem; int /*<<< orphan*/  base; int /*<<< orphan*/  dma; int /*<<< orphan*/ * clk; int /*<<< orphan*/  irq_cd; scalar_t__ is2440; TYPE_1__* pdata; int /*<<< orphan*/  pio_active; int /*<<< orphan*/  complete_what; int /*<<< orphan*/  sdidata; int /*<<< orphan*/  sdiimsk; int /*<<< orphan*/  pio_tasklet; int /*<<< orphan*/  complete_lock; struct platform_device* pdev; struct mmc_host* mmc; } ;
struct TYPE_12__ {scalar_t__ of_node; TYPE_1__* platform_data; } ;
struct platform_device {TYPE_5__ dev; int /*<<< orphan*/  name; } ;
struct mmc_host {int ocr_avail; int caps; int f_min; int f_max; int max_blk_count; int max_blk_size; int max_req_size; int max_seg_size; int max_segs; int /*<<< orphan*/ * ops; } ;
struct TYPE_11__ {int /*<<< orphan*/  start; } ;
struct TYPE_10__ {int ocr_avail; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPLETION_NONE ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int MMC_CAP_4_BIT_DATA ; 
 int MMC_CAP_SDIO_IRQ ; 
 int MMC_VDD_32_33 ; 
 int MMC_VDD_33_34 ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  S3C2410_SDIDATA ; 
 int /*<<< orphan*/  S3C2410_SDIIMSK ; 
 int /*<<< orphan*/  S3C2440_SDIDATA ; 
 int /*<<< orphan*/  S3C2440_SDIIMSK ; 
 int /*<<< orphan*/  XFER_NONE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_5__*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct s3cmci_host*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dbg_debug ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,struct s3cmci_host*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (struct mmc_host*) ; 
 struct mmc_host* FUNC20 (int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC21 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC22 (struct mmc_host*) ; 
 struct s3cmci_host* FUNC23 (struct mmc_host*) ; 
 int /*<<< orphan*/  pio_tasklet ; 
 scalar_t__ FUNC24 (struct platform_device*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC25 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct platform_device*,struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct s3cmci_host*) ; 
 TYPE_2__* FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC31 (struct s3cmci_host*) ; 
 int FUNC32 (struct s3cmci_host*) ; 
 int /*<<< orphan*/  FUNC33 (struct s3cmci_host*) ; 
 scalar_t__ FUNC34 (struct s3cmci_host*) ; 
 int /*<<< orphan*/  s3cmci_irq ; 
 int /*<<< orphan*/  s3cmci_ops ; 
 int FUNC35 (struct s3cmci_host*) ; 
 int FUNC36 (struct s3cmci_host*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC39(struct platform_device *pdev)
{
	struct s3cmci_host *host;
	struct mmc_host	*mmc;
	int ret;
	int i;

	mmc = FUNC20(sizeof(struct s3cmci_host), &pdev->dev);
	if (!mmc) {
		ret = -ENOMEM;
		goto probe_out;
	}

	host = FUNC23(mmc);
	host->mmc 	= mmc;
	host->pdev	= pdev;

	if (pdev->dev.of_node)
		ret = FUNC35(host);
	else
		ret = FUNC36(host);

	if (ret)
		goto probe_free_host;

	host->pdata = pdev->dev.platform_data;

	FUNC37(&host->complete_lock);
	FUNC38(&host->pio_tasklet, pio_tasklet, (unsigned long) host);

	if (host->is2440) {
		host->sdiimsk	= S3C2440_SDIIMSK;
		host->sdidata	= S3C2440_SDIDATA;
		host->clk_div	= 1;
	} else {
		host->sdiimsk	= S3C2410_SDIIMSK;
		host->sdidata	= S3C2410_SDIDATA;
		host->clk_div	= 2;
	}

	host->complete_what 	= COMPLETION_NONE;
	host->pio_active 	= XFER_NONE;

	host->mem = FUNC25(pdev, IORESOURCE_MEM, 0);
	if (!host->mem) {
		FUNC10(&pdev->dev,
			"failed to get io memory region resource.\n");

		ret = -ENOENT;
		goto probe_free_gpio;
	}

	host->mem = FUNC29(host->mem->start,
				       FUNC30(host->mem), pdev->name);

	if (!host->mem) {
		FUNC10(&pdev->dev, "failed to request io memory region.\n");
		ret = -ENOENT;
		goto probe_free_gpio;
	}

	host->base = FUNC17(host->mem->start, FUNC30(host->mem));
	if (!host->base) {
		FUNC10(&pdev->dev, "failed to ioremap() io memory region.\n");
		ret = -EINVAL;
		goto probe_free_mem_region;
	}

	host->irq = FUNC24(pdev, 0);
	if (host->irq <= 0) {
		ret = -EINVAL;
		goto probe_iounmap;
	}

	if (FUNC28(host->irq, s3cmci_irq, 0, DRIVER_NAME, host)) {
		FUNC10(&pdev->dev, "failed to request mci interrupt.\n");
		ret = -ENOENT;
		goto probe_iounmap;
	}

	/* We get spurious interrupts even when we have set the IMSK
	 * register to ignore everything, so use disable_irq() to make
	 * ensure we don't lock the system with un-serviceable requests. */

	FUNC12(host->irq);
	host->irq_state = false;

	/* Depending on the dma state, get a DMA channel to use. */

	if (FUNC34(host)) {
		host->dma = FUNC14(&pdev->dev, "rx-tx");
		ret = FUNC2(host->dma);
		if (ret) {
			FUNC10(&pdev->dev, "cannot get DMA channel.\n");
			goto probe_free_irq;
		}
	}

	host->clk = FUNC5(&pdev->dev, "sdi");
	if (FUNC0(host->clk)) {
		FUNC10(&pdev->dev, "failed to find clock source.\n");
		ret = FUNC1(host->clk);
		host->clk = NULL;
		goto probe_free_dma;
	}

	ret = FUNC7(host->clk);
	if (ret) {
		FUNC10(&pdev->dev, "failed to enable clock source.\n");
		goto clk_free;
	}

	host->clk_rate = FUNC6(host->clk);

	mmc->ops 	= &s3cmci_ops;
	mmc->ocr_avail	= MMC_VDD_32_33 | MMC_VDD_33_34;
#ifdef CONFIG_MMC_S3C_HW_SDIO_IRQ
	mmc->caps	= MMC_CAP_4_BIT_DATA | MMC_CAP_SDIO_IRQ;
#else
	mmc->caps	= MMC_CAP_4_BIT_DATA;
#endif
	mmc->f_min 	= host->clk_rate / (host->clk_div * 256);
	mmc->f_max 	= host->clk_rate / host->clk_div;

	if (host->pdata->ocr_avail)
		mmc->ocr_avail = host->pdata->ocr_avail;

	mmc->max_blk_count	= 4095;
	mmc->max_blk_size	= 4095;
	mmc->max_req_size	= 4095 * 512;
	mmc->max_seg_size	= mmc->max_req_size;

	mmc->max_segs		= 128;

	FUNC9(host, dbg_debug,
	    "probe: mode:%s mapped mci_base:%p irq:%u irq_cd:%u dma:%p.\n",
	    (host->is2440?"2440":""),
	    host->base, host->irq, host->irq_cd, host->dma);

	ret = FUNC32(host);
	if (ret) {
		FUNC10(&pdev->dev, "failed to register cpufreq\n");
		goto free_dmabuf;
	}

	ret = FUNC19(mmc);
	if (ret) {
		FUNC10(&pdev->dev, "failed to add mmc host.\n");
		goto free_cpufreq;
	}

	FUNC33(host);

	FUNC26(pdev, mmc);
	FUNC11(&pdev->dev, "%s - using %s, %s SDIO IRQ\n", FUNC22(mmc),
		 FUNC34(host) ? "dma" : "pio",
		 mmc->caps & MMC_CAP_SDIO_IRQ ? "hw" : "sw");

	return 0;

 free_cpufreq:
	FUNC31(host);

 free_dmabuf:
	FUNC4(host->clk);

 clk_free:
	FUNC8(host->clk);

 probe_free_dma:
	if (FUNC34(host))
		FUNC13(host->dma);

 probe_free_irq:
	FUNC15(host->irq, host);

 probe_iounmap:
	FUNC18(host->base);

 probe_free_mem_region:
	FUNC27(host->mem->start, FUNC30(host->mem));

 probe_free_gpio:
	if (!pdev->dev.of_node)
		for (i = FUNC3(5); i <= FUNC3(10); i++)
			FUNC16(i);

 probe_free_host:
	FUNC21(mmc);

 probe_out:
	return ret;
}