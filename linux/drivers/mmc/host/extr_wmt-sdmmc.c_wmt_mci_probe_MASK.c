#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct wmt_mci_priv {int power_inverted; int cd_inverted; int irq_regular; int irq_dma; int /*<<< orphan*/  sdmmc_base; int /*<<< orphan*/  clk_sdmmc; int /*<<< orphan*/  dma_desc_buffer; int /*<<< orphan*/  dma_desc_device_addr; TYPE_1__* dev; struct mmc_host* mmc; } ;
struct wmt_mci_caps {int max_segs; int /*<<< orphan*/  max_blk_size; int /*<<< orphan*/  max_seg_size; int /*<<< orphan*/  caps; int /*<<< orphan*/  ocr_avail; int /*<<< orphan*/  f_max; int /*<<< orphan*/  f_min; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {struct wmt_mci_caps* data; } ;
struct mmc_host {int max_segs; int max_req_size; int max_blk_count; int /*<<< orphan*/  max_blk_size; int /*<<< orphan*/  max_seg_size; int /*<<< orphan*/  caps; int /*<<< orphan*/  ocr_avail; int /*<<< orphan*/  f_max; int /*<<< orphan*/  f_min; int /*<<< orphan*/ * ops; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,struct wmt_mci_priv*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mmc_host*) ; 
 struct mmc_host* FUNC11 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct mmc_host*) ; 
 struct wmt_mci_priv* FUNC13 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC14 (struct device_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct device_node*,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC17 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct mmc_host*) ; 
 int FUNC19 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct wmt_mci_priv*) ; 
 int /*<<< orphan*/  wmt_mci_dma_isr ; 
 int /*<<< orphan*/  wmt_mci_dt_ids ; 
 int /*<<< orphan*/  wmt_mci_ops ; 
 int /*<<< orphan*/  wmt_mci_regular_isr ; 
 int /*<<< orphan*/  FUNC20 (struct mmc_host*) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct mmc_host *mmc;
	struct wmt_mci_priv *priv;
	struct device_node *np = pdev->dev.of_node;
	const struct of_device_id *of_id =
		FUNC17(wmt_mci_dt_ids, &pdev->dev);
	const struct wmt_mci_caps *wmt_caps;
	int ret;
	int regular_irq, dma_irq;

	if (!of_id || !of_id->data) {
		FUNC4(&pdev->dev, "Controller capabilities data missing\n");
		return -EFAULT;
	}

	wmt_caps = of_id->data;

	if (!np) {
		FUNC4(&pdev->dev, "Missing SDMMC description in devicetree\n");
		return -EFAULT;
	}

	regular_irq = FUNC9(np, 0);
	dma_irq = FUNC9(np, 1);

	if (!regular_irq || !dma_irq) {
		FUNC4(&pdev->dev, "Getting IRQs failed!\n");
		ret = -ENXIO;
		goto fail1;
	}

	mmc = FUNC11(sizeof(struct wmt_mci_priv), &pdev->dev);
	if (!mmc) {
		FUNC4(&pdev->dev, "Failed to allocate mmc_host\n");
		ret = -ENOMEM;
		goto fail1;
	}

	mmc->ops = &wmt_mci_ops;
	mmc->f_min = wmt_caps->f_min;
	mmc->f_max = wmt_caps->f_max;
	mmc->ocr_avail = wmt_caps->ocr_avail;
	mmc->caps = wmt_caps->caps;

	mmc->max_seg_size = wmt_caps->max_seg_size;
	mmc->max_segs = wmt_caps->max_segs;
	mmc->max_blk_size = wmt_caps->max_blk_size;

	mmc->max_req_size = (16*512*mmc->max_segs);
	mmc->max_blk_count = mmc->max_req_size / 512;

	priv = FUNC13(mmc);
	priv->mmc = mmc;
	priv->dev = &pdev->dev;

	priv->power_inverted = 0;
	priv->cd_inverted = 0;

	if (FUNC15(np, "sdon-inverted", NULL))
		priv->power_inverted = 1;
	if (FUNC15(np, "cd-inverted", NULL))
		priv->cd_inverted = 1;

	priv->sdmmc_base = FUNC16(np, 0);
	if (!priv->sdmmc_base) {
		FUNC4(&pdev->dev, "Failed to map IO space\n");
		ret = -ENOMEM;
		goto fail2;
	}

	priv->irq_regular = regular_irq;
	priv->irq_dma = dma_irq;

	ret = FUNC19(regular_irq, wmt_mci_regular_isr, 0, "sdmmc", priv);
	if (ret) {
		FUNC4(&pdev->dev, "Register regular IRQ fail\n");
		goto fail3;
	}

	ret = FUNC19(dma_irq, wmt_mci_dma_isr, 0, "sdmmc", priv);
	if (ret) {
		FUNC4(&pdev->dev, "Register DMA IRQ fail\n");
		goto fail4;
	}

	/* alloc some DMA buffers for descriptors/transfers */
	priv->dma_desc_buffer = FUNC6(&pdev->dev,
						   mmc->max_blk_count * 16,
						   &priv->dma_desc_device_addr,
						   GFP_KERNEL);
	if (!priv->dma_desc_buffer) {
		FUNC4(&pdev->dev, "DMA alloc fail\n");
		ret = -EPERM;
		goto fail5;
	}

	FUNC18(pdev, mmc);

	priv->clk_sdmmc = FUNC14(np, 0);
	if (FUNC0(priv->clk_sdmmc)) {
		FUNC4(&pdev->dev, "Error getting clock\n");
		ret = FUNC1(priv->clk_sdmmc);
		goto fail5;
	}

	ret = FUNC2(priv->clk_sdmmc);
	if (ret)
		goto fail6;

	/* configure the controller to a known 'ready' state */
	FUNC20(mmc);

	FUNC10(mmc);

	FUNC5(&pdev->dev, "WMT SDHC Controller initialized\n");

	return 0;
fail6:
	FUNC3(priv->clk_sdmmc);
fail5:
	FUNC7(dma_irq, priv);
fail4:
	FUNC7(regular_irq, priv);
fail3:
	FUNC8(priv->sdmmc_base);
fail2:
	FUNC12(mmc);
fail1:
	return ret;
}