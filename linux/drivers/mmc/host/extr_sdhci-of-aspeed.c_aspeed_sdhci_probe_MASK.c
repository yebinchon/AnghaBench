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
struct sdhci_pltfm_host {struct sdhci_host* clk; } ;
struct sdhci_host {int /*<<< orphan*/  mmc; } ;
struct resource {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct aspeed_sdhci {int /*<<< orphan*/  width_mask; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASPEED_SDC_S0MMC8 ; 
 int /*<<< orphan*/  ASPEED_SDC_S1MMC8 ; 
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct sdhci_host*) ; 
 int FUNC1 (struct sdhci_host*) ; 
 int FUNC2 (struct aspeed_sdhci*,struct resource*) ; 
 int /*<<< orphan*/  aspeed_sdhci_pdata ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*) ; 
 int FUNC4 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int) ; 
 struct sdhci_host* FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*) ; 
 struct sdhci_host* FUNC14 (struct platform_device*,int /*<<< orphan*/ *,int) ; 
 struct aspeed_sdhci* FUNC15 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC16 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct sdhci_pltfm_host *pltfm_host;
	struct aspeed_sdhci *dev;
	struct sdhci_host *host;
	struct resource *res;
	int slot;
	int ret;

	host = FUNC14(pdev, &aspeed_sdhci_pdata, sizeof(*dev));
	if (FUNC0(host))
		return FUNC1(host);

	pltfm_host = FUNC16(host);
	dev = FUNC15(pltfm_host);
	dev->parent = FUNC6(pdev->dev.parent);

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	slot = FUNC2(dev, res);

	if (slot < 0)
		return slot;
	else if (slot >= 2)
		return -EINVAL;

	FUNC7(&pdev->dev, "Configuring for slot %d\n", slot);
	dev->width_mask = !slot ? ASPEED_SDC_S0MMC8 : ASPEED_SDC_S1MMC8;

	FUNC12(pdev);

	pltfm_host->clk = FUNC8(&pdev->dev, NULL);
	if (FUNC0(pltfm_host->clk))
		return FUNC1(pltfm_host->clk);

	ret = FUNC4(pltfm_host->clk);
	if (ret) {
		FUNC5(&pdev->dev, "Unable to enable SDIO clock\n");
		goto err_pltfm_free;
	}

	ret = FUNC9(host->mmc);
	if (ret)
		goto err_sdhci_add;

	ret = FUNC11(host);
	if (ret)
		goto err_sdhci_add;

	return 0;

err_sdhci_add:
	FUNC3(pltfm_host->clk);
err_pltfm_free:
	FUNC13(pdev);
	return ret;
}