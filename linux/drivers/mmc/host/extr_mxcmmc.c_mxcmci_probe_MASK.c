#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device_id {int /*<<< orphan*/  driver_data; } ;
struct TYPE_18__ {int /*<<< orphan*/  of_node; struct imxmmc_platform_data* platform_data; } ;
struct platform_device {TYPE_4__ dev; TYPE_3__* id_entry; } ;
struct of_device_id {struct platform_device_id* data; } ;
struct TYPE_15__ {int /*<<< orphan*/  dma_request; int /*<<< orphan*/  priority; int /*<<< orphan*/  peripheral_type; } ;
struct mxcmci_host {int default_irq_mask; int rev_no; void* clk_per; void* clk_ipg; TYPE_7__* dma; int /*<<< orphan*/  watchdog; struct mmc_host* mmc; struct imxmmc_platform_data* pdata; int /*<<< orphan*/  datawork; int /*<<< orphan*/  dmareq; TYPE_1__ dma_data; int /*<<< orphan*/  lock; int /*<<< orphan*/  devtype; int /*<<< orphan*/  phys_base; void* base; } ;
struct mmc_host {int caps; int max_blk_size; int max_blk_count; int max_req_size; int max_seg_size; int max_segs; int ocr_avail; int f_min; int f_max; int /*<<< orphan*/ * ops; } ;
struct imxmmc_platform_data {int dat3_card_detect; int ocr_avail; int (* init ) (TYPE_4__*,int /*<<< orphan*/ ,struct mmc_host*) ;} ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;
struct TYPE_19__ {TYPE_2__* device; } ;
struct TYPE_17__ {int /*<<< orphan*/  driver_data; } ;
struct TYPE_16__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_PRIO_LOW ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IMX_DMATYPE_SDHC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int INT_CARD_INSERTION_EN ; 
 int INT_CARD_REMOVAL_EN ; 
 int /*<<< orphan*/  IORESOURCE_DMA ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 int MMC_CAP_4_BIT_DATA ; 
 int MMC_CAP_SDIO_IRQ ; 
 int /*<<< orphan*/  MMC_REG_INT_CNTR ; 
 int /*<<< orphan*/  MMC_REG_READ_TO ; 
 int /*<<< orphan*/  MMC_REG_REV_NO ; 
 int MMC_VDD_32_33 ; 
 int MMC_VDD_33_34 ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 void* FUNC9 (TYPE_4__*,char*) ; 
 void* FUNC10 (TYPE_4__*,struct resource*) ; 
 int FUNC11 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mxcmci_host*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_7__*) ; 
 TYPE_7__* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mxcmci_host*) ; 
 TYPE_7__* FUNC17 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  filter ; 
 int /*<<< orphan*/  FUNC18 (struct mxcmci_host*) ; 
 int /*<<< orphan*/  FUNC19 (struct mmc_host*) ; 
 struct mmc_host* FUNC20 (int,TYPE_4__*) ; 
 scalar_t__ FUNC21 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC22 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC23 (struct mmc_host*) ; 
 int FUNC24 (struct mmc_host*) ; 
 struct mxcmci_host* FUNC25 (struct mmc_host*) ; 
 int FUNC26 (struct mmc_host*) ; 
 int /*<<< orphan*/  mxcmci_datawork ; 
 int /*<<< orphan*/  mxcmci_detect_irq ; 
 int /*<<< orphan*/  mxcmci_irq ; 
 int /*<<< orphan*/  mxcmci_of_match ; 
 int /*<<< orphan*/  mxcmci_ops ; 
 int FUNC27 (struct mxcmci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct mxcmci_host*) ; 
 int /*<<< orphan*/  mxcmci_watchdog ; 
 int /*<<< orphan*/  FUNC29 (struct mxcmci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct mxcmci_host*,int,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC31 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,char*) ; 
 int FUNC33 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC34 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (struct platform_device*,struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC36 (char*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int FUNC38 (TYPE_4__*,int /*<<< orphan*/ ,struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC40(struct platform_device *pdev)
{
	struct mmc_host *mmc;
	struct mxcmci_host *host;
	struct resource *res;
	int ret = 0, irq;
	bool dat3_card_detect = false;
	dma_cap_mask_t mask;
	const struct of_device_id *of_id;
	struct imxmmc_platform_data *pdata = pdev->dev.platform_data;

	FUNC36("i.MX/MPC512x SDHC driver\n");

	of_id = FUNC31(mxcmci_of_match, &pdev->dev);

	res = FUNC34(pdev, IORESOURCE_MEM, 0);
	irq = FUNC33(pdev, 0);
	if (irq < 0)
		return irq;

	mmc = FUNC20(sizeof(*host), &pdev->dev);
	if (!mmc)
		return -ENOMEM;

	host = FUNC25(mmc);

	host->base = FUNC10(&pdev->dev, res);
	if (FUNC1(host->base)) {
		ret = FUNC2(host->base);
		goto out_free;
	}

	host->phys_base = res->start;

	ret = FUNC24(mmc);
	if (ret)
		goto out_free;
	mmc->ops = &mxcmci_ops;

	/* For devicetree parsing, the bus width is read from devicetree */
	if (pdata)
		mmc->caps = MMC_CAP_4_BIT_DATA | MMC_CAP_SDIO_IRQ;
	else
		mmc->caps |= MMC_CAP_SDIO_IRQ;

	/* MMC core transfer sizes tunable parameters */
	mmc->max_blk_size = 2048;
	mmc->max_blk_count = 65535;
	mmc->max_req_size = mmc->max_blk_size * mmc->max_blk_count;
	mmc->max_seg_size = mmc->max_req_size;

	if (of_id) {
		const struct platform_device_id *id_entry = of_id->data;
		host->devtype = id_entry->driver_data;
	} else {
		host->devtype = pdev->id_entry->driver_data;
	}

	/* adjust max_segs after devtype detection */
	if (!FUNC18(host))
		mmc->max_segs = 64;

	host->mmc = mmc;
	host->pdata = pdata;
	FUNC37(&host->lock);

	if (pdata)
		dat3_card_detect = pdata->dat3_card_detect;
	else if (FUNC21(mmc)
			&& !FUNC32(pdev->dev.of_node, "cd-gpios"))
		dat3_card_detect = true;

	ret = FUNC26(mmc);
	if (ret)
		goto out_free;

	if (!mmc->ocr_avail) {
		if (pdata && pdata->ocr_avail)
			mmc->ocr_avail = pdata->ocr_avail;
		else
			mmc->ocr_avail = MMC_VDD_32_33 | MMC_VDD_33_34;
	}

	if (dat3_card_detect)
		host->default_irq_mask =
			INT_CARD_INSERTION_EN | INT_CARD_REMOVAL_EN;
	else
		host->default_irq_mask = 0;

	host->clk_ipg = FUNC9(&pdev->dev, "ipg");
	if (FUNC1(host->clk_ipg)) {
		ret = FUNC2(host->clk_ipg);
		goto out_free;
	}

	host->clk_per = FUNC9(&pdev->dev, "per");
	if (FUNC1(host->clk_per)) {
		ret = FUNC2(host->clk_per);
		goto out_free;
	}

	ret = FUNC5(host->clk_per);
	if (ret)
		goto out_free;

	ret = FUNC5(host->clk_ipg);
	if (ret)
		goto out_clk_per_put;

	FUNC28(host);

	host->rev_no = FUNC27(host, MMC_REG_REV_NO);
	if (host->rev_no != 0x400) {
		ret = -ENODEV;
		FUNC6(FUNC22(host->mmc), "wrong rev.no. 0x%08x. aborting.\n",
			host->rev_no);
		goto out_clk_put;
	}

	mmc->f_min = FUNC4(host->clk_per) >> 16;
	mmc->f_max = FUNC4(host->clk_per) >> 1;

	/* recommended in data sheet */
	FUNC30(host, 0x2db4, MMC_REG_READ_TO);

	FUNC29(host, host->default_irq_mask, MMC_REG_INT_CNTR);

	if (!host->pdata) {
		host->dma = FUNC17(&pdev->dev, "rx-tx");
	} else {
		res = FUNC34(pdev, IORESOURCE_DMA, 0);
		if (res) {
			host->dmareq = res->start;
			host->dma_data.peripheral_type = IMX_DMATYPE_SDHC;
			host->dma_data.priority = DMA_PRIO_LOW;
			host->dma_data.dma_request = host->dmareq;
			FUNC13(mask);
			FUNC12(DMA_SLAVE, mask);
			host->dma = FUNC16(mask, filter, host);
		}
	}
	if (host->dma)
		mmc->max_seg_size = FUNC14(
				host->dma->device->dev);
	else
		FUNC7(FUNC22(host->mmc), "dma not available. Using PIO\n");

	FUNC0(&host->datawork, mxcmci_datawork);

	ret = FUNC11(&pdev->dev, irq, mxcmci_irq, 0,
			       FUNC8(&pdev->dev), host);
	if (ret)
		goto out_free_dma;

	FUNC35(pdev, mmc);

	if (host->pdata && host->pdata->init) {
		ret = host->pdata->init(&pdev->dev, mxcmci_detect_irq,
				host->mmc);
		if (ret)
			goto out_free_dma;
	}

	FUNC39(&host->watchdog, mxcmci_watchdog, 0);

	FUNC19(mmc);

	return 0;

out_free_dma:
	if (host->dma)
		FUNC15(host->dma);

out_clk_put:
	FUNC3(host->clk_ipg);
out_clk_per_put:
	FUNC3(host->clk_per);

out_free:
	FUNC23(mmc);

	return ret;
}