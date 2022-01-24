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
typedef  int u32 ;
struct wmt_mci_priv {int /*<<< orphan*/  clk_sdmmc; scalar_t__ sdmmc_base; int /*<<< orphan*/  irq_dma; int /*<<< orphan*/  irq_regular; int /*<<< orphan*/  dma_desc_device_addr; int /*<<< orphan*/  dma_desc_buffer; TYPE_1__* mmc; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int max_blk_count; } ;

/* Variables and functions */
 int BM_SOFT_RESET ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ SDMMC_BLKLEN ; 
 scalar_t__ SDMMC_BUSMODE ; 
 scalar_t__ SDMMC_STS0 ; 
 scalar_t__ SDMMC_STS1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct wmt_mci_priv*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*) ; 
 struct wmt_mci_priv* FUNC7 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct mmc_host*) ; 
 struct mmc_host* FUNC9 (struct platform_device*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__) ; 
 int FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct resource*) ; 
 int /*<<< orphan*/  FUNC15 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct mmc_host *mmc;
	struct wmt_mci_priv *priv;
	struct resource *res;
	u32 reg_tmp;

	mmc = FUNC9(pdev);
	priv = FUNC7(mmc);

	/* reset SD controller */
	reg_tmp = FUNC11(priv->sdmmc_base + SDMMC_BUSMODE);
	FUNC16(reg_tmp | BM_SOFT_RESET, priv->sdmmc_base + SDMMC_BUSMODE);
	reg_tmp = FUNC12(priv->sdmmc_base + SDMMC_BLKLEN);
	FUNC17(reg_tmp & ~(0xA000), priv->sdmmc_base + SDMMC_BLKLEN);
	FUNC15(0xFF, priv->sdmmc_base + SDMMC_STS0);
	FUNC15(0xFF, priv->sdmmc_base + SDMMC_STS1);

	/* release the dma buffers */
	FUNC3(&pdev->dev, priv->mmc->max_blk_count * 16,
			  priv->dma_desc_buffer, priv->dma_desc_device_addr);

	FUNC8(mmc);

	FUNC4(priv->irq_regular, priv);
	FUNC4(priv->irq_dma, priv);

	FUNC5(priv->sdmmc_base);

	FUNC0(priv->clk_sdmmc);
	FUNC1(priv->clk_sdmmc);

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	FUNC13(res->start, FUNC14(res));

	FUNC6(mmc);

	FUNC2(&pdev->dev, "WMT MCI device removed\n");

	return 0;
}