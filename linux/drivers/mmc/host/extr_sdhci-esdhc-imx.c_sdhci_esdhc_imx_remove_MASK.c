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
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {scalar_t__ ioaddr; } ;
struct pltfm_imx_data {int /*<<< orphan*/  pm_qos_req; TYPE_1__* socdata; int /*<<< orphan*/  clk_ahb; int /*<<< orphan*/  clk_ipg; int /*<<< orphan*/  clk_per; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int ESDHC_FLAG_PMQOS ; 
 scalar_t__ SDHCI_INT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sdhci_host* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*) ; 
 struct pltfm_imx_data* FUNC8 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC9 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC10 (struct sdhci_host*,int) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct sdhci_host *host = FUNC1(pdev);
	struct sdhci_pltfm_host *pltfm_host = FUNC9(host);
	struct pltfm_imx_data *imx_data = FUNC8(pltfm_host);
	int dead = (FUNC6(host->ioaddr + SDHCI_INT_STATUS) == 0xffffffff);

	FUNC4(&pdev->dev);
	FUNC3(&pdev->dev);
	FUNC5(&pdev->dev);

	FUNC10(host, dead);

	FUNC0(imx_data->clk_per);
	FUNC0(imx_data->clk_ipg);
	FUNC0(imx_data->clk_ahb);

	if (imx_data->socdata->flags & ESDHC_FLAG_PMQOS)
		FUNC2(&imx_data->pm_qos_req);

	FUNC7(pdev);

	return 0;
}