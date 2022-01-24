#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mvsd_host {int base_clock; int /*<<< orphan*/  clk; int /*<<< orphan*/  timer; int /*<<< orphan*/  base; int /*<<< orphan*/  lock; TYPE_1__* dev; struct mmc_host* mmc; } ;
struct mmc_host {int ocr_avail; int max_blk_size; int max_blk_count; int max_segs; int max_seg_size; int max_req_size; int caps; scalar_t__ f_max; int /*<<< orphan*/  f_min; int /*<<< orphan*/ * ops; } ;
struct mbus_dram_target_info {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MMC_CAP_ERASE ; 
 int MMC_CAP_NEEDS_POLL ; 
 int MMC_VDD_32_33 ; 
 int MMC_VDD_33_34 ; 
 int /*<<< orphan*/  MVSD_BASE_DIV_MAX ; 
 scalar_t__ MVSD_CLOCKRATE_MAX ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct resource*) ; 
 int FUNC10 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mvsd_host*) ; 
 scalar_t__ maxfreq ; 
 int FUNC11 (struct mmc_host*) ; 
 struct mmc_host* FUNC12 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct mmc_host*) ; 
 int FUNC14 (struct mmc_host*) ; 
 struct mvsd_host* FUNC15 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC16 (struct mvsd_host*,struct mbus_dram_target_info const*) ; 
 struct mbus_dram_target_info* FUNC17 () ; 
 int /*<<< orphan*/  mvsd_irq ; 
 int /*<<< orphan*/  mvsd_ops ; 
 int /*<<< orphan*/  FUNC18 (struct mvsd_host*) ; 
 int /*<<< orphan*/  mvsd_timeout_timer ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct mmc_host *mmc = NULL;
	struct mvsd_host *host = NULL;
	const struct mbus_dram_target_info *dram;
	struct resource *r;
	int ret, irq;

	if (!np) {
		FUNC7(&pdev->dev, "no DT node\n");
		return -ENODEV;
	}
	r = FUNC20(pdev, IORESOURCE_MEM, 0);
	irq = FUNC19(pdev, 0);
	if (!r || irq < 0)
		return -ENXIO;

	mmc = FUNC12(sizeof(struct mvsd_host), &pdev->dev);
	if (!mmc) {
		ret = -ENOMEM;
		goto out;
	}

	host = FUNC15(mmc);
	host->mmc = mmc;
	host->dev = &pdev->dev;

	/*
	 * Some non-DT platforms do not pass a clock, and the clock
	 * frequency is passed through platform_data. On DT platforms,
	 * a clock must always be passed, even if there is no gatable
	 * clock associated to the SDIO interface (it can simply be a
	 * fixed rate clock).
	 */
	host->clk = FUNC8(&pdev->dev, NULL);
	if (FUNC1(host->clk)) {
		FUNC7(&pdev->dev, "no clock associated\n");
		ret = -EINVAL;
		goto out;
	}
	FUNC5(host->clk);

	mmc->ops = &mvsd_ops;

	mmc->ocr_avail = MMC_VDD_32_33 | MMC_VDD_33_34;

	mmc->f_min = FUNC0(host->base_clock, MVSD_BASE_DIV_MAX);
	mmc->f_max = MVSD_CLOCKRATE_MAX;

	mmc->max_blk_size = 2048;
	mmc->max_blk_count = 65535;

	mmc->max_segs = 1;
	mmc->max_seg_size = mmc->max_blk_size * mmc->max_blk_count;
	mmc->max_req_size = mmc->max_blk_size * mmc->max_blk_count;

	host->base_clock = FUNC4(host->clk) / 2;
	ret = FUNC14(mmc);
	if (ret < 0)
		goto out;
	if (maxfreq)
		mmc->f_max = maxfreq;

	mmc->caps |= MMC_CAP_ERASE;

	FUNC22(&host->lock);

	host->base = FUNC9(&pdev->dev, r);
	if (FUNC1(host->base)) {
		ret = FUNC2(host->base);
		goto out;
	}

	/* (Re-)program MBUS remapping windows if we are asked to. */
	dram = FUNC17();
	if (dram)
		FUNC16(host, dram);

	FUNC18(host);

	ret = FUNC10(&pdev->dev, irq, mvsd_irq, 0, DRIVER_NAME, host);
	if (ret) {
		FUNC7(&pdev->dev, "cannot assign irq %d\n", irq);
		goto out;
	}

	FUNC23(&host->timer, mvsd_timeout_timer, 0);
	FUNC21(pdev, mmc);
	ret = FUNC11(mmc);
	if (ret)
		goto out;

	if (!(mmc->caps & MMC_CAP_NEEDS_POLL))
		FUNC6(&pdev->dev, "using GPIO for card detection\n");
	else
		FUNC6(&pdev->dev, "lacking card detect (fall back to polling)\n");

	return 0;

out:
	if (mmc) {
		if (!FUNC1(host->clk))
			FUNC3(host->clk);
		FUNC13(mmc);
	}

	return ret;
}