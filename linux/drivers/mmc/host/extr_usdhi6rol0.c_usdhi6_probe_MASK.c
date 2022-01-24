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
typedef  int u32 ;
struct usdhi6_host {int imclk; void* clk; int /*<<< orphan*/  timeout_work; void* base; void* pins_default; void* pinctrl; void* pins_uhs; int /*<<< orphan*/  timeout; int /*<<< orphan*/  wait; struct mmc_host* mmc; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct mmc_host {int caps; int max_segs; int max_blk_size; int max_req_size; int max_blk_count; int max_seg_size; int f_max; int f_min; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 int MMC_CAP_MMC_HIGHSPEED ; 
 int MMC_CAP_NEEDS_POLL ; 
 int MMC_CAP_SDIO_IRQ ; 
 int MMC_CAP_SD_HIGHSPEED ; 
 int PAGE_SIZE ; 
 char* PINCTRL_STATE_DEFAULT ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  USDHI6_SD_PORT_SEL ; 
 int USDHI6_SD_PORT_SEL_PORTS_SHIFT ; 
 int /*<<< orphan*/  USDHI6_VERSION ; 
 int /*<<< orphan*/  USDHI6_WAIT_FOR_REQUEST ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 void* FUNC9 (struct device*,int /*<<< orphan*/ *) ; 
 void* FUNC10 (struct device*,struct resource*) ; 
 void* FUNC11 (struct device*) ; 
 int FUNC12 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usdhi6_host*) ; 
 int FUNC13 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usdhi6_host*) ; 
 int FUNC14 (struct mmc_host*) ; 
 struct mmc_host* FUNC15 (int,struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct mmc_host*) ; 
 int FUNC17 (struct mmc_host*) ; 
 struct usdhi6_host* FUNC18 (struct mmc_host*) ; 
 int FUNC19 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 void* FUNC21 (void*,char*) ; 
 int FUNC22 (struct platform_device*,char*) ; 
 struct resource* FUNC23 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct platform_device*,struct usdhi6_host*) ; 
 int /*<<< orphan*/  usdhi6_cd ; 
 int /*<<< orphan*/  FUNC25 (struct usdhi6_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct usdhi6_host*) ; 
 int /*<<< orphan*/  usdhi6_ops ; 
 int FUNC27 (struct usdhi6_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usdhi6_sd ; 
 int /*<<< orphan*/  usdhi6_sd_bh ; 
 int /*<<< orphan*/  usdhi6_sdio ; 
 int /*<<< orphan*/  usdhi6_timeout_work ; 

__attribute__((used)) static int FUNC28(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct mmc_host *mmc;
	struct usdhi6_host *host;
	struct resource *res;
	int irq_cd, irq_sd, irq_sdio;
	u32 version;
	int ret;

	if (!dev->of_node)
		return -ENODEV;

	irq_cd = FUNC22(pdev, "card detect");
	irq_sd = FUNC22(pdev, "data");
	irq_sdio = FUNC22(pdev, "SDIO");
	if (irq_sd < 0 || irq_sdio < 0)
		return -ENODEV;

	mmc = FUNC15(sizeof(struct usdhi6_host), dev);
	if (!mmc)
		return -ENOMEM;

	ret = FUNC19(mmc);
	if (ret)
		goto e_free_mmc;

	ret = FUNC17(mmc);
	if (ret < 0)
		goto e_free_mmc;

	host		= FUNC18(mmc);
	host->mmc	= mmc;
	host->wait	= USDHI6_WAIT_FOR_REQUEST;
	host->timeout	= FUNC20(4000);

	host->pinctrl = FUNC11(&pdev->dev);
	if (FUNC1(host->pinctrl)) {
		ret = FUNC2(host->pinctrl);
		goto e_free_mmc;
	}

	host->pins_uhs = FUNC21(host->pinctrl, "state_uhs");
	if (!FUNC1(host->pins_uhs)) {
		host->pins_default = FUNC21(host->pinctrl,
							  PINCTRL_STATE_DEFAULT);

		if (FUNC1(host->pins_default)) {
			FUNC6(dev,
				"UHS pinctrl requires a default pin state.\n");
			ret = FUNC2(host->pins_default);
			goto e_free_mmc;
		}
	}

	res = FUNC23(pdev, IORESOURCE_MEM, 0);
	host->base = FUNC10(dev, res);
	if (FUNC1(host->base)) {
		ret = FUNC2(host->base);
		goto e_free_mmc;
	}

	host->clk = FUNC9(dev, NULL);
	if (FUNC1(host->clk)) {
		ret = FUNC2(host->clk);
		goto e_free_mmc;
	}

	host->imclk = FUNC4(host->clk);

	ret = FUNC5(host->clk);
	if (ret < 0)
		goto e_free_mmc;

	version = FUNC27(host, USDHI6_VERSION);
	if ((version & 0xfff) != 0xa0d) {
		FUNC6(dev, "Version not recognized %x\n", version);
		goto e_clk_off;
	}

	FUNC7(dev, "A USDHI6ROL0 SD host detected with %d ports\n",
		 FUNC27(host, USDHI6_SD_PORT_SEL) >> USDHI6_SD_PORT_SEL_PORTS_SHIFT);

	FUNC26(host);

	if (irq_cd >= 0) {
		ret = FUNC12(dev, irq_cd, usdhi6_cd, 0,
				       FUNC8(dev), host);
		if (ret < 0)
			goto e_clk_off;
	} else {
		mmc->caps |= MMC_CAP_NEEDS_POLL;
	}

	ret = FUNC13(dev, irq_sd, usdhi6_sd, usdhi6_sd_bh, 0,
			       FUNC8(dev), host);
	if (ret < 0)
		goto e_clk_off;

	ret = FUNC12(dev, irq_sdio, usdhi6_sdio, 0,
			       FUNC8(dev), host);
	if (ret < 0)
		goto e_clk_off;

	FUNC0(&host->timeout_work, usdhi6_timeout_work);

	FUNC25(host, res->start);

	mmc->ops = &usdhi6_ops;
	mmc->caps |= MMC_CAP_SD_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED |
		     MMC_CAP_SDIO_IRQ;
	/* Set .max_segs to some random number. Feel free to adjust. */
	mmc->max_segs = 32;
	mmc->max_blk_size = 512;
	mmc->max_req_size = PAGE_SIZE * mmc->max_segs;
	mmc->max_blk_count = mmc->max_req_size / mmc->max_blk_size;
	/*
	 * Setting .max_seg_size to 1 page would simplify our page-mapping code,
	 * But OTOH, having large segments makes DMA more efficient. We could
	 * check, whether we managed to get DMA and fall back to 1 page
	 * segments, but if we do manage to obtain DMA and then it fails at
	 * run-time and we fall back to PIO, we will continue getting large
	 * segments. So, we wouldn't be able to get rid of the code anyway.
	 */
	mmc->max_seg_size = mmc->max_req_size;
	if (!mmc->f_max)
		mmc->f_max = host->imclk;
	mmc->f_min = host->imclk / 512;

	FUNC24(pdev, host);

	ret = FUNC14(mmc);
	if (ret < 0)
		goto e_clk_off;

	return 0;

e_clk_off:
	FUNC3(host->clk);
e_free_mmc:
	FUNC16(mmc);

	return ret;
}