#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int /*<<< orphan*/  mmc; } ;
struct TYPE_4__ {struct pic32_sdhci_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pic32_sdhci_priv {struct sdhci_host* sys_clk; struct sdhci_host* base_clk; } ;
struct pic32_sdhci_platform_data {int (* setup_dma ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ADMA_FIFO_RD_THSHLD ; 
 int /*<<< orphan*/  ADMA_FIFO_WR_THSHLD ; 
 scalar_t__ FUNC0 (struct sdhci_host*) ; 
 int FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*) ; 
 int FUNC3 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 void* FUNC6 (TYPE_1__*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct platform_device*,struct pic32_sdhci_priv*) ; 
 int FUNC9 (struct sdhci_host*) ; 
 int /*<<< orphan*/  sdhci_pic32_pdata ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*) ; 
 struct sdhci_host* FUNC11 (struct platform_device*,int /*<<< orphan*/ *,int) ; 
 struct pic32_sdhci_priv* FUNC12 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC13 (struct sdhci_host*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct sdhci_host *host;
	struct sdhci_pltfm_host *pltfm_host;
	struct pic32_sdhci_priv *sdhci_pdata;
	struct pic32_sdhci_platform_data *plat_data;
	int ret;

	host = FUNC11(pdev, &sdhci_pic32_pdata,
				sizeof(struct pic32_sdhci_priv));
	if (FUNC0(host)) {
		ret = FUNC1(host);
		goto err;
	}

	pltfm_host = FUNC13(host);
	sdhci_pdata = FUNC12(pltfm_host);

	plat_data = pdev->dev.platform_data;
	if (plat_data && plat_data->setup_dma) {
		ret = plat_data->setup_dma(ADMA_FIFO_RD_THSHLD,
					   ADMA_FIFO_WR_THSHLD);
		if (ret)
			goto err_host;
	}

	sdhci_pdata->sys_clk = FUNC6(&pdev->dev, "sys_clk");
	if (FUNC0(sdhci_pdata->sys_clk)) {
		ret = FUNC1(sdhci_pdata->sys_clk);
		FUNC4(&pdev->dev, "Error getting clock\n");
		goto err_host;
	}

	ret = FUNC3(sdhci_pdata->sys_clk);
	if (ret) {
		FUNC4(&pdev->dev, "Error enabling clock\n");
		goto err_host;
	}

	sdhci_pdata->base_clk = FUNC6(&pdev->dev, "base_clk");
	if (FUNC0(sdhci_pdata->base_clk)) {
		ret = FUNC1(sdhci_pdata->base_clk);
		FUNC4(&pdev->dev, "Error getting clock\n");
		goto err_sys_clk;
	}

	ret = FUNC3(sdhci_pdata->base_clk);
	if (ret) {
		FUNC4(&pdev->dev, "Error enabling clock\n");
		goto err_base_clk;
	}

	ret = FUNC7(host->mmc);
	if (ret)
		goto err_base_clk;

	ret = FUNC8(pdev, sdhci_pdata);
	if (ret) {
		FUNC4(&pdev->dev, "failed to probe platform!\n");
		goto err_base_clk;
	}

	ret = FUNC9(host);
	if (ret)
		goto err_base_clk;

	FUNC5(&pdev->dev, "Successfully added sdhci host\n");
	return 0;

err_base_clk:
	FUNC2(sdhci_pdata->base_clk);
err_sys_clk:
	FUNC2(sdhci_pdata->sys_clk);
err_host:
	FUNC10(pdev);
err:
	FUNC4(&pdev->dev, "pic32-sdhci probe failed: %d\n", ret);
	return ret;
}