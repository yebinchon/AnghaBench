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
typedef  scalar_t__ u32 ;
struct sdhci_pltfm_host {struct sdhci_host* clk; } ;
struct sdhci_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/  adma_table_cnt; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct dwcmshc_priv {struct sdhci_host* bus_clk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sdhci_host*) ; 
 int FUNC2 (struct sdhci_host*) ; 
 scalar_t__ SDHCI_MAX_SEGS ; 
 int /*<<< orphan*/  SZ_128M ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*) ; 
 int FUNC4 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sdhci_host*) ; 
 int /*<<< orphan*/  sdhci_dwcmshc_pdata ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*) ; 
 struct sdhci_host* FUNC12 (struct platform_device*,int /*<<< orphan*/ *,int) ; 
 struct dwcmshc_priv* FUNC13 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC14 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct sdhci_pltfm_host *pltfm_host;
	struct sdhci_host *host;
	struct dwcmshc_priv *priv;
	int err;
	u32 extra;

	host = FUNC12(pdev, &sdhci_dwcmshc_pdata,
				sizeof(struct dwcmshc_priv));
	if (FUNC1(host))
		return FUNC2(host);

	/*
	 * extra adma table cnt for cross 128M boundary handling.
	 */
	extra = FUNC0(FUNC7(&pdev->dev), SZ_128M);
	if (extra > SDHCI_MAX_SEGS)
		extra = SDHCI_MAX_SEGS;
	host->adma_table_cnt += extra;

	pltfm_host = FUNC14(host);
	priv = FUNC13(pltfm_host);

	pltfm_host->clk = FUNC6(&pdev->dev, "core");
	if (FUNC1(pltfm_host->clk)) {
		err = FUNC2(pltfm_host->clk);
		FUNC5(&pdev->dev, "failed to get core clk: %d\n", err);
		goto free_pltfm;
	}
	err = FUNC4(pltfm_host->clk);
	if (err)
		goto free_pltfm;

	priv->bus_clk = FUNC6(&pdev->dev, "bus");
	if (!FUNC1(priv->bus_clk))
		FUNC4(priv->bus_clk);

	err = FUNC8(host->mmc);
	if (err)
		goto err_clk;

	FUNC10(pdev);

	err = FUNC9(host);
	if (err)
		goto err_clk;

	return 0;

err_clk:
	FUNC3(pltfm_host->clk);
	FUNC3(priv->bus_clk);
free_pltfm:
	FUNC11(pdev);
	return err;
}