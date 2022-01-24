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
struct xenon_priv {struct sdhci_host* axi_clk; } ;
struct sdhci_pltfm_host {struct sdhci_host* clk; } ;
struct sdhci_host {int /*<<< orphan*/  mmc; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct sdhci_host*) ; 
 int FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*) ; 
 int FUNC3 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int FUNC16 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*) ; 
 struct sdhci_host* FUNC19 (struct platform_device*,int /*<<< orphan*/ *,int) ; 
 struct xenon_priv* FUNC20 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC21 (struct sdhci_host*) ; 
 int /*<<< orphan*/  sdhci_xenon_pdata ; 
 int FUNC22 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct sdhci_host*) ; 
 int FUNC24 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC25 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC26 (struct sdhci_host*,int) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct sdhci_pltfm_host *pltfm_host;
	struct sdhci_host *host;
	struct xenon_priv *priv;
	int err;

	host = FUNC19(pdev, &sdhci_xenon_pdata,
				sizeof(struct xenon_priv));
	if (FUNC0(host))
		return FUNC1(host);

	pltfm_host = FUNC21(host);
	priv = FUNC20(pltfm_host);

	/*
	 * Link Xenon specific mmc_host_ops function,
	 * to replace standard ones in sdhci_ops.
	 */
	FUNC23(host);

	pltfm_host->clk = FUNC5(&pdev->dev, "core");
	if (FUNC0(pltfm_host->clk)) {
		err = FUNC1(pltfm_host->clk);
		FUNC4(&pdev->dev, "Failed to setup input clk: %d\n", err);
		goto free_pltfm;
	}
	err = FUNC3(pltfm_host->clk);
	if (err)
		goto free_pltfm;

	priv->axi_clk = FUNC5(&pdev->dev, "axi");
	if (FUNC0(priv->axi_clk)) {
		err = FUNC1(priv->axi_clk);
		if (err == -EPROBE_DEFER)
			goto err_clk;
	} else {
		err = FUNC3(priv->axi_clk);
		if (err)
			goto err_clk;
	}

	err = FUNC6(host->mmc);
	if (err)
		goto err_clk_axi;

	FUNC17(pdev);

	FUNC26(host, false);

	/* Xenon specific dt parse */
	err = FUNC22(pdev);
	if (err)
		goto err_clk_axi;

	err = FUNC24(host);
	if (err)
		goto err_clk_axi;

	FUNC9(&pdev->dev);
	FUNC12(&pdev->dev);
	FUNC13(&pdev->dev, 50);
	FUNC14(&pdev->dev);
	FUNC8(&pdev->dev);
	FUNC15(&pdev->dev, 1);

	err = FUNC16(host);
	if (err)
		goto remove_sdhc;

	FUNC10(&pdev->dev);

	return 0;

remove_sdhc:
	FUNC7(&pdev->dev);
	FUNC11(&pdev->dev);
	FUNC25(host);
err_clk_axi:
	FUNC2(priv->axi_clk);
err_clk:
	FUNC2(pltfm_host->clk);
free_pltfm:
	FUNC18(pdev);
	return err;
}