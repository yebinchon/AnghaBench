#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_18__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct mt_gpdma_desc {int dummy; } ;
struct mt_bdma_desc {int dummy; } ;
struct TYPE_20__ {int /*<<< orphan*/  bd_addr; void* bd; int /*<<< orphan*/  gpd_addr; void* gpd; } ;
struct msdc_host {scalar_t__ irq; int internal_cd; int timeout_clks; TYPE_8__ dma; TYPE_1__* dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  req_timeout; void* dma_mask; TYPE_6__* dev_comp; int /*<<< orphan*/  src_clk_freq; int /*<<< orphan*/ * src_clk; struct mmc_host* mmc; int /*<<< orphan*/ * pins_uhs; int /*<<< orphan*/ * pinctrl; int /*<<< orphan*/ * pins_default; int /*<<< orphan*/ * src_clk_cg; int /*<<< orphan*/ * bus_clk; int /*<<< orphan*/ * h_clk; int /*<<< orphan*/ * top_base; int /*<<< orphan*/ * base; } ;
struct mmc_host {int caps; int max_segs; int max_blk_size; int max_req_size; int max_blk_count; int /*<<< orphan*/  max_seg_size; int /*<<< orphan*/  caps2; void* f_min; int /*<<< orphan*/ * ops; } ;
struct TYPE_21__ {void** dma_mask; } ;
struct TYPE_19__ {int clk_div_bits; scalar_t__ support_64g; scalar_t__ use_internal_cd; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDMA_DESC_BUFLEN ; 
 int /*<<< orphan*/  BDMA_DESC_BUFLEN_EXT ; 
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_NONE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int MAX_BD_NUM ; 
 int /*<<< orphan*/  MMC_CAP2_SDIO_IRQ_NOTHREAD ; 
 int MMC_CAP_CMD23 ; 
 int MMC_CAP_ERASE ; 
 int MMC_CAP_NONREMOVABLE ; 
 int MMC_CAP_SDIO_IRQ ; 
 int /*<<< orphan*/  MTK_MMC_AUTOSUSPEND_DELAY ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 void* FUNC7 (TYPE_1__*,char*) ; 
 void* FUNC8 (TYPE_1__*,struct resource*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct msdc_host*) ; 
 void* FUNC11 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int,void*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct mmc_host*) ; 
 struct mmc_host* FUNC14 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (struct mmc_host*) ; 
 TYPE_9__* FUNC16 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC17 (struct mmc_host*) ; 
 int FUNC18 (struct mmc_host*) ; 
 struct msdc_host* FUNC19 (struct mmc_host*) ; 
 int FUNC20 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC21 (struct msdc_host*) ; 
 int /*<<< orphan*/  FUNC22 (struct msdc_host*) ; 
 int /*<<< orphan*/  FUNC23 (struct msdc_host*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC24 (struct msdc_host*) ; 
 int /*<<< orphan*/  msdc_irq ; 
 int /*<<< orphan*/  FUNC25 (struct platform_device*,struct msdc_host*) ; 
 int /*<<< orphan*/  msdc_request_timeout ; 
 int /*<<< orphan*/  FUNC26 (struct msdc_host*) ; 
 int /*<<< orphan*/  mt_msdc_ops ; 
 TYPE_6__* FUNC27 (TYPE_1__*) ; 
 void* FUNC28 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC29 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC30 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (struct platform_device*,struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC38(struct platform_device *pdev)
{
	struct mmc_host *mmc;
	struct msdc_host *host;
	struct resource *res;
	int ret;

	if (!pdev->dev.of_node) {
		FUNC6(&pdev->dev, "No DT found\n");
		return -EINVAL;
	}

	/* Allocate MMC host for this device */
	mmc = FUNC14(sizeof(struct msdc_host), &pdev->dev);
	if (!mmc)
		return -ENOMEM;

	host = FUNC19(mmc);
	ret = FUNC18(mmc);
	if (ret)
		goto host_free;

	res = FUNC30(pdev, IORESOURCE_MEM, 0);
	host->base = FUNC8(&pdev->dev, res);
	if (FUNC3(host->base)) {
		ret = FUNC4(host->base);
		goto host_free;
	}

	res = FUNC30(pdev, IORESOURCE_MEM, 1);
	if (res) {
		host->top_base = FUNC8(&pdev->dev, res);
		if (FUNC3(host->top_base))
			host->top_base = NULL;
	}

	ret = FUNC20(mmc);
	if (ret)
		goto host_free;

	host->src_clk = FUNC7(&pdev->dev, "source");
	if (FUNC3(host->src_clk)) {
		ret = FUNC4(host->src_clk);
		goto host_free;
	}

	host->h_clk = FUNC7(&pdev->dev, "hclk");
	if (FUNC3(host->h_clk)) {
		ret = FUNC4(host->h_clk);
		goto host_free;
	}

	host->bus_clk = FUNC7(&pdev->dev, "bus_clk");
	if (FUNC3(host->bus_clk))
		host->bus_clk = NULL;
	/*source clock control gate is optional clock*/
	host->src_clk_cg = FUNC7(&pdev->dev, "source_cg");
	if (FUNC3(host->src_clk_cg))
		host->src_clk_cg = NULL;

	host->irq = FUNC29(pdev, 0);
	if (host->irq < 0) {
		ret = -EINVAL;
		goto host_free;
	}

	host->pinctrl = FUNC9(&pdev->dev);
	if (FUNC3(host->pinctrl)) {
		ret = FUNC4(host->pinctrl);
		FUNC6(&pdev->dev, "Cannot find pinctrl!\n");
		goto host_free;
	}

	host->pins_default = FUNC28(host->pinctrl, "default");
	if (FUNC3(host->pins_default)) {
		ret = FUNC4(host->pins_default);
		FUNC6(&pdev->dev, "Cannot find pinctrl default!\n");
		goto host_free;
	}

	host->pins_uhs = FUNC28(host->pinctrl, "state_uhs");
	if (FUNC3(host->pins_uhs)) {
		ret = FUNC4(host->pins_uhs);
		FUNC6(&pdev->dev, "Cannot find pinctrl uhs!\n");
		goto host_free;
	}

	FUNC25(pdev, host);

	host->dev = &pdev->dev;
	host->dev_comp = FUNC27(&pdev->dev);
	host->mmc = mmc;
	host->src_clk_freq = FUNC5(host->src_clk);
	/* Set host parameters to mmc */
	mmc->ops = &mt_msdc_ops;
	if (host->dev_comp->clk_div_bits == 8)
		mmc->f_min = FUNC0(host->src_clk_freq, 4 * 255);
	else
		mmc->f_min = FUNC0(host->src_clk_freq, 4 * 4095);

	if (!(mmc->caps & MMC_CAP_NONREMOVABLE) &&
	    !FUNC15(mmc) &&
	    host->dev_comp->use_internal_cd) {
		/*
		 * Is removable but no GPIO declared, so
		 * use internal functionality.
		 */
		host->internal_cd = true;
	}

	if (mmc->caps & MMC_CAP_SDIO_IRQ)
		mmc->caps2 |= MMC_CAP2_SDIO_IRQ_NOTHREAD;

	mmc->caps |= MMC_CAP_ERASE | MMC_CAP_CMD23;
	/* MMC core transfer sizes tunable parameters */
	mmc->max_segs = MAX_BD_NUM;
	if (host->dev_comp->support_64g)
		mmc->max_seg_size = BDMA_DESC_BUFLEN_EXT;
	else
		mmc->max_seg_size = BDMA_DESC_BUFLEN;
	mmc->max_blk_size = 2048;
	mmc->max_req_size = 512 * 1024;
	mmc->max_blk_count = mmc->max_req_size / 512;
	if (host->dev_comp->support_64g)
		host->dma_mask = FUNC1(36);
	else
		host->dma_mask = FUNC1(32);
	FUNC16(mmc)->dma_mask = &host->dma_mask;

	host->timeout_clks = 3 * 1048576;
	host->dma.gpd = FUNC11(&pdev->dev,
				2 * sizeof(struct mt_gpdma_desc),
				&host->dma.gpd_addr, GFP_KERNEL);
	host->dma.bd = FUNC11(&pdev->dev,
				MAX_BD_NUM * sizeof(struct mt_bdma_desc),
				&host->dma.bd_addr, GFP_KERNEL);
	if (!host->dma.gpd || !host->dma.bd) {
		ret = -ENOMEM;
		goto release_mem;
	}
	FUNC23(host, &host->dma);
	FUNC2(&host->req_timeout, msdc_request_timeout);
	FUNC37(&host->lock);

	FUNC31(pdev, mmc);
	FUNC26(host);
	FUNC24(host);

	ret = FUNC10(&pdev->dev, host->irq, msdc_irq,
			       IRQF_TRIGGER_NONE, pdev->name, host);
	if (ret)
		goto release;

	FUNC34(host->dev);
	FUNC35(host->dev, MTK_MMC_AUTOSUSPEND_DELAY);
	FUNC36(host->dev);
	FUNC33(host->dev);
	ret = FUNC13(mmc);

	if (ret)
		goto end;

	return 0;
end:
	FUNC32(host->dev);
release:
	FUNC31(pdev, NULL);
	FUNC21(host);
	FUNC22(host);
release_mem:
	if (host->dma.gpd)
		FUNC12(&pdev->dev,
			2 * sizeof(struct mt_gpdma_desc),
			host->dma.gpd, host->dma.gpd_addr);
	if (host->dma.bd)
		FUNC12(&pdev->dev,
			MAX_BD_NUM * sizeof(struct mt_bdma_desc),
			host->dma.bd, host->dma.bd_addr);
host_free:
	FUNC17(mmc);

	return ret;
}