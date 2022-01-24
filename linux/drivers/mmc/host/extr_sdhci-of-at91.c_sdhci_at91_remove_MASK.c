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
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct sdhci_at91_priv {struct clk* mainck; struct clk* hclock; struct clk* gck; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 struct sdhci_host* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sdhci_at91_priv* FUNC5 (struct sdhci_pltfm_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*) ; 
 struct sdhci_pltfm_host* FUNC7 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct sdhci_host	*host = FUNC1(pdev);
	struct sdhci_pltfm_host	*pltfm_host = FUNC7(host);
	struct sdhci_at91_priv	*priv = FUNC5(pltfm_host);
	struct clk *gck = priv->gck;
	struct clk *hclock = priv->hclock;
	struct clk *mainck = priv->mainck;

	FUNC3(&pdev->dev);
	FUNC2(&pdev->dev);
	FUNC4(&pdev->dev);

	FUNC6(pdev);

	FUNC0(gck);
	FUNC0(hclock);
	FUNC0(mainck);

	return 0;
}