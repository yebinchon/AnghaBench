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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mt_gpdma_desc {int dummy; } ;
struct mt_bdma_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bd_addr; int /*<<< orphan*/  bd; int /*<<< orphan*/  gpd_addr; int /*<<< orphan*/  gpd; } ;
struct msdc_host {int /*<<< orphan*/  mmc; TYPE_1__ dma; int /*<<< orphan*/  dev; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int MAX_BD_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct msdc_host* FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct msdc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct msdc_host*) ; 
 struct mmc_host* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct mmc_host *mmc;
	struct msdc_host *host;

	mmc = FUNC6(pdev);
	host = FUNC2(mmc);

	FUNC9(host->dev);

	FUNC7(pdev, NULL);
	FUNC3(host->mmc);
	FUNC4(host);
	FUNC5(host);

	FUNC8(host->dev);
	FUNC10(host->dev);
	FUNC0(&pdev->dev,
			2 * sizeof(struct mt_gpdma_desc),
			host->dma.gpd, host->dma.gpd_addr);
	FUNC0(&pdev->dev, MAX_BD_NUM * sizeof(struct mt_bdma_desc),
			host->dma.bd, host->dma.bd_addr);

	FUNC1(host->mmc);

	return 0;
}