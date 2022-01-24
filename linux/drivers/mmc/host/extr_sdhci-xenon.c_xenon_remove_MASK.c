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
struct xenon_priv {int /*<<< orphan*/  axi_clk; } ;
struct sdhci_pltfm_host {int /*<<< orphan*/  clk; } ;
struct sdhci_host {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sdhci_host* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 
 struct xenon_priv* FUNC6 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC7 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct sdhci_host *host = FUNC1(pdev);
	struct sdhci_pltfm_host *pltfm_host = FUNC7(host);
	struct xenon_priv *priv = FUNC6(pltfm_host);

	FUNC3(&pdev->dev);
	FUNC2(&pdev->dev);
	FUNC4(&pdev->dev);

	FUNC8(host, 0);

	FUNC9(host);
	FUNC0(priv->axi_clk);
	FUNC0(pltfm_host->clk);

	FUNC5(pdev);

	return 0;
}