#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sdhci_pltfm_host {struct sdhci_host* clk; } ;
struct sdhci_iproc_host {struct sdhci_iproc_data const* data; } ;
struct sdhci_iproc_data {int /*<<< orphan*/  caps1; int /*<<< orphan*/  caps; TYPE_1__* pdata; int /*<<< orphan*/  mmc_caps; } ;
struct sdhci_host {int /*<<< orphan*/  caps1; int /*<<< orphan*/  caps; TYPE_2__* mmc; } ;
struct device {scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  caps; } ;
struct TYPE_3__ {int quirks; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct sdhci_host*) ; 
 int FUNC1 (struct sdhci_host*) ; 
 int SDHCI_QUIRK_MISSING_CAPS ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*) ; 
 int FUNC3 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct sdhci_iproc_data* FUNC5 (struct device*) ; 
 struct sdhci_host* FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_2__*) ; 
 int FUNC8 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*) ; 
 struct sdhci_host* FUNC11 (struct platform_device*,TYPE_1__*,int) ; 
 struct sdhci_iproc_host* FUNC12 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC13 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	const struct sdhci_iproc_data *iproc_data = NULL;
	struct sdhci_host *host;
	struct sdhci_iproc_host *iproc_host;
	struct sdhci_pltfm_host *pltfm_host;
	int ret;

	iproc_data = FUNC5(dev);
	if (!iproc_data)
		return -ENODEV;

	host = FUNC11(pdev, iproc_data->pdata, sizeof(*iproc_host));
	if (FUNC0(host))
		return FUNC1(host);

	pltfm_host = FUNC13(host);
	iproc_host = FUNC12(pltfm_host);

	iproc_host->data = iproc_data;

	ret = FUNC7(host->mmc);
	if (ret)
		goto err;

	FUNC9(pdev);

	host->mmc->caps |= iproc_host->data->mmc_caps;

	if (dev->of_node) {
		pltfm_host->clk = FUNC6(dev, NULL);
		if (FUNC0(pltfm_host->clk)) {
			ret = FUNC1(pltfm_host->clk);
			goto err;
		}
		ret = FUNC3(pltfm_host->clk);
		if (ret) {
			FUNC4(dev, "failed to enable host clk\n");
			goto err;
		}
	}

	if (iproc_host->data->pdata->quirks & SDHCI_QUIRK_MISSING_CAPS) {
		host->caps = iproc_host->data->caps;
		host->caps1 = iproc_host->data->caps1;
	}

	ret = FUNC8(host);
	if (ret)
		goto err_clk;

	return 0;

err_clk:
	if (dev->of_node)
		FUNC2(pltfm_host->clk);
err:
	FUNC10(pdev);
	return ret;
}