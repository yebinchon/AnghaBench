#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tmio_mmc_data {int ocr_mask; int max_segs; int /*<<< orphan*/  max_blk_count; int /*<<< orphan*/  flags; } ;
struct uniphier_sd_priv {unsigned long caps; struct tmio_mmc_host* rst_hw; struct tmio_mmc_data tmio_data; struct tmio_mmc_host* rst_br; struct tmio_mmc_host* rst; struct tmio_mmc_host* clk; } ;
struct tmio_mmc_host {int bus_shift; int (* clk_enable ) (struct tmio_mmc_host*) ;TYPE_1__* mmc; int /*<<< orphan*/  set_clock; int /*<<< orphan*/  clk_disable; int /*<<< orphan*/ * dma_ops; int /*<<< orphan*/  hw_reset; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int caps; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (struct tmio_mmc_host*) ; 
 int MMC_CAP_HW_RESET ; 
 int MMC_CAP_UHS ; 
 int MMC_VDD_165_195 ; 
 int MMC_VDD_32_33 ; 
 int MMC_VDD_33_34 ; 
 int FUNC1 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  TMIO_MMC_32BIT_DATA_PORT ; 
 int /*<<< orphan*/  U16_MAX ; 
 int UNIPHIER_SD_CAP_EXTENDED_IP ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 struct tmio_mmc_host* FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 struct uniphier_sd_priv* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tmio_mmc_host*) ; 
 struct tmio_mmc_host* FUNC8 (struct device*,char*) ; 
 void* FUNC9 (struct device*,char*) ; 
 scalar_t__ FUNC10 (struct device*) ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct tmio_mmc_host* FUNC12 (struct platform_device*,struct tmio_mmc_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct tmio_mmc_host*) ; 
 int FUNC14 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  tmio_mmc_irq ; 
 int /*<<< orphan*/  uniphier_sd_clk_disable ; 
 int FUNC15 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  uniphier_sd_external_dma_ops ; 
 int /*<<< orphan*/  FUNC16 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  uniphier_sd_hw_reset ; 
 int /*<<< orphan*/  uniphier_sd_internal_dma_ops ; 
 int /*<<< orphan*/  uniphier_sd_set_clock ; 
 int FUNC17 (struct tmio_mmc_host*,struct uniphier_sd_priv*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct uniphier_sd_priv *priv;
	struct tmio_mmc_data *tmio_data;
	struct tmio_mmc_host *host;
	int irq, ret;

	irq = FUNC11(pdev, 0);
	if (irq < 0)
		return irq;

	priv = FUNC6(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->caps = (unsigned long)FUNC10(dev);

	priv->clk = FUNC5(dev, NULL);
	if (FUNC0(priv->clk)) {
		FUNC2(dev, "failed to get clock\n");
		return FUNC1(priv->clk);
	}

	priv->rst = FUNC9(dev, "host");
	if (FUNC0(priv->rst)) {
		FUNC2(dev, "failed to get host reset\n");
		return FUNC1(priv->rst);
	}

	/* old version has one more reset */
	if (!(priv->caps & UNIPHIER_SD_CAP_EXTENDED_IP)) {
		priv->rst_br = FUNC9(dev, "bridge");
		if (FUNC0(priv->rst_br)) {
			FUNC2(dev, "failed to get bridge reset\n");
			return FUNC1(priv->rst_br);
		}
	}

	tmio_data = &priv->tmio_data;
	tmio_data->flags |= TMIO_MMC_32BIT_DATA_PORT;

	host = FUNC12(pdev, tmio_data);
	if (FUNC0(host))
		return FUNC1(host);

	if (host->mmc->caps & MMC_CAP_HW_RESET) {
		priv->rst_hw = FUNC8(dev, "hw");
		if (FUNC0(priv->rst_hw)) {
			FUNC2(dev, "failed to get hw reset\n");
			ret = FUNC1(priv->rst_hw);
			goto free_host;
		}
		host->hw_reset = uniphier_sd_hw_reset;
	}

	if (host->mmc->caps & MMC_CAP_UHS) {
		ret = FUNC17(host, priv);
		if (ret) {
			FUNC4(dev,
				 "failed to setup UHS (error %d).  Disabling UHS.",
				 ret);
			host->mmc->caps &= ~MMC_CAP_UHS;
		}
	}

	ret = FUNC7(dev, irq, tmio_mmc_irq, IRQF_SHARED,
			       FUNC3(dev), host);
	if (ret)
		goto free_host;

	if (priv->caps & UNIPHIER_SD_CAP_EXTENDED_IP)
		host->dma_ops = &uniphier_sd_internal_dma_ops;
	else
		host->dma_ops = &uniphier_sd_external_dma_ops;

	host->bus_shift = 1;
	host->clk_enable = uniphier_sd_clk_enable;
	host->clk_disable = uniphier_sd_clk_disable;
	host->set_clock = uniphier_sd_set_clock;

	ret = FUNC15(host);
	if (ret)
		goto free_host;

	FUNC16(host);

	tmio_data->ocr_mask = MMC_VDD_32_33 | MMC_VDD_33_34;
	if (host->mmc->caps & MMC_CAP_UHS)
		tmio_data->ocr_mask |= MMC_VDD_165_195;

	tmio_data->max_segs = 1;
	tmio_data->max_blk_count = U16_MAX;

	ret = FUNC14(host);
	if (ret)
		goto free_host;

	return 0;

free_host:
	FUNC13(host);

	return ret;
}