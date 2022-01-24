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
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; } ;
struct mmc_host {int f_min; int f_max; int ocr_avail; int max_segs; int max_blk_size; int max_blk_count; int /*<<< orphan*/  max_req_size; int /*<<< orphan*/  max_seg_size; int /*<<< orphan*/  caps; int /*<<< orphan*/ * ops; } ;
struct goldfish_mmc_host {scalar_t__ virt_base; int phys_base; int irq; int /*<<< orphan*/ * reg_base; int /*<<< orphan*/ * dev; int /*<<< orphan*/  id; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_SIZE ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct goldfish_mmc_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  MMC_CAP_4_BIT_DATA ; 
 int /*<<< orphan*/  MMC_INT_ENABLE ; 
 int /*<<< orphan*/  MMC_SET_BUFFER ; 
 int MMC_STAT_CMD_TIMEOUT ; 
 int MMC_STAT_END_OF_CMD ; 
 int MMC_STAT_END_OF_DATA ; 
 int MMC_STAT_STATE_CHANGE ; 
 int MMC_VDD_32_33 ; 
 int MMC_VDD_33_34 ; 
 int /*<<< orphan*/  dev_attr_cover_switch ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  goldfish_mmc_irq ; 
 int /*<<< orphan*/  goldfish_mmc_ops ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mmc_host*) ; 
 struct mmc_host* FUNC9 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC11 (struct mmc_host*) ; 
 struct goldfish_mmc_host* FUNC12 (struct mmc_host*) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct goldfish_mmc_host*) ; 
 int /*<<< orphan*/  FUNC16 (char*,long,long) ; 
 int FUNC17 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct goldfish_mmc_host*) ; 
 int /*<<< orphan*/  FUNC18 (struct resource*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct mmc_host *mmc;
	struct goldfish_mmc_host *host = NULL;
	struct resource *res;
	int ret = 0;
	int irq;
	dma_addr_t buf_addr;

	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	irq = FUNC13(pdev, 0);
	if (res == NULL || irq < 0)
		return -ENXIO;

	mmc = FUNC9(sizeof(struct goldfish_mmc_host), &pdev->dev);
	if (mmc == NULL) {
		ret = -ENOMEM;
		goto err_alloc_host_failed;
	}

	host = FUNC12(mmc);

	FUNC16("mmc: Mapping %lX to %lX\n", (long)res->start, (long)res->end);
	host->reg_base = FUNC6(res->start, FUNC18(res));
	if (host->reg_base == NULL) {
		ret = -ENOMEM;
		goto ioremap_failed;
	}
	host->virt_base = FUNC4(&pdev->dev, BUFFER_SIZE,
					     &buf_addr, GFP_KERNEL);

	if (host->virt_base == 0) {
		ret = -ENOMEM;
		goto dma_alloc_failed;
	}
	host->phys_base = buf_addr;

	host->id = pdev->id;
	host->irq = irq;

	mmc->ops = &goldfish_mmc_ops;
	mmc->f_min = 400000;
	mmc->f_max = 24000000;
	mmc->ocr_avail = MMC_VDD_32_33 | MMC_VDD_33_34;
	mmc->caps = MMC_CAP_4_BIT_DATA;

	/* Use scatterlist DMA to reduce per-transfer costs.
	 * NOTE max_seg_size assumption that small blocks aren't
	 * normally used (except e.g. for reading SD registers).
	 */
	mmc->max_segs = 32;
	mmc->max_blk_size = 2048;	/* MMC_BLOCK_LENGTH is 11 bits (+1) */
	mmc->max_blk_count = 2048;	/* MMC_BLOCK_COUNT is 11 bits (+1) */
	mmc->max_req_size = BUFFER_SIZE;
	mmc->max_seg_size = mmc->max_req_size;

	ret = FUNC17(host->irq, goldfish_mmc_irq, 0, DRIVER_NAME, host);
	if (ret) {
		FUNC1(&pdev->dev, "Failed IRQ Adding goldfish MMC\n");
		goto err_request_irq_failed;
	}

	host->dev = &pdev->dev;
	FUNC15(pdev, host);

	ret = FUNC3(&pdev->dev, &dev_attr_cover_switch);
	if (ret)
		FUNC2(FUNC10(mmc), "Unable to create sysfs attributes\n");

	FUNC0(host, MMC_SET_BUFFER, host->phys_base);
	FUNC0(host, MMC_INT_ENABLE,
			   MMC_STAT_END_OF_CMD | MMC_STAT_END_OF_DATA |
			   MMC_STAT_STATE_CHANGE | MMC_STAT_CMD_TIMEOUT);

	FUNC8(mmc);
	return 0;

err_request_irq_failed:
	FUNC5(&pdev->dev, BUFFER_SIZE, host->virt_base,
			  host->phys_base);
dma_alloc_failed:
	FUNC7(host->reg_base);
ioremap_failed:
	FUNC11(mmc);
err_alloc_host_failed:
	return ret;
}