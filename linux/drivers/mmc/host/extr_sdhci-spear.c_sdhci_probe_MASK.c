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
struct spear_sdhci {struct sdhci_host* clk; } ;
struct sdhci_host {char* hw_name; scalar_t__ irq; int /*<<< orphan*/  mmc; int /*<<< orphan*/  quirks; int /*<<< orphan*/ * ops; struct sdhci_host* ioaddr; } ;
struct resource {int dummy; } ;
struct device {struct device* parent; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct sdhci_host*) ; 
 int FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  SDHCI_QUIRK_BROKEN_ADMA ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*) ; 
 int FUNC3 (struct sdhci_host*) ; 
 int FUNC4 (struct sdhci_host*) ; 
 int FUNC5 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int) ; 
 struct sdhci_host* FUNC8 (struct device*,int /*<<< orphan*/ *) ; 
 struct sdhci_host* FUNC9 (struct device*,struct resource*) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct sdhci_host*) ; 
 int FUNC14 (struct sdhci_host*) ; 
 struct sdhci_host* FUNC15 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sdhci_host*) ; 
 int /*<<< orphan*/  sdhci_pltfm_ops ; 
 struct spear_sdhci* FUNC17 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct sdhci_host *host;
	struct resource *iomem;
	struct spear_sdhci *sdhci;
	struct device *dev;
	int ret;

	dev = pdev->dev.parent ? pdev->dev.parent : &pdev->dev;
	host = FUNC15(dev, sizeof(*sdhci));
	if (FUNC0(host)) {
		ret = FUNC1(host);
		FUNC6(&pdev->dev, "cannot allocate memory for sdhci\n");
		goto err;
	}

	iomem = FUNC12(pdev, IORESOURCE_MEM, 0);
	host->ioaddr = FUNC9(&pdev->dev, iomem);
	if (FUNC0(host->ioaddr)) {
		ret = FUNC1(host->ioaddr);
		FUNC6(&pdev->dev, "unable to map iomem: %d\n", ret);
		goto err_host;
	}

	host->hw_name = "sdhci";
	host->ops = &sdhci_pltfm_ops;
	host->irq = FUNC11(pdev, 0);
	if (host->irq <= 0) {
		ret = -EINVAL;
		goto err_host;
	}
	host->quirks = SDHCI_QUIRK_BROKEN_ADMA;

	sdhci = FUNC17(host);

	/* clk enable */
	sdhci->clk = FUNC8(&pdev->dev, NULL);
	if (FUNC0(sdhci->clk)) {
		ret = FUNC1(sdhci->clk);
		FUNC6(&pdev->dev, "Error getting clock\n");
		goto err_host;
	}

	ret = FUNC4(sdhci->clk);
	if (ret) {
		FUNC6(&pdev->dev, "Error enabling clock\n");
		goto err_host;
	}

	ret = FUNC5(sdhci->clk, 50000000);
	if (ret)
		FUNC6(&pdev->dev, "Error setting desired clk, clk=%lu\n",
				FUNC3(sdhci->clk));

	/*
	 * It is optional to use GPIOs for sdhci card detection. If we
	 * find a descriptor using slot GPIO, we use it.
	 */
	ret = FUNC10(host->mmc, "cd", 0, false, 0, NULL);
	if (ret == -EPROBE_DEFER)
		goto disable_clk;

	ret = FUNC14(host);
	if (ret)
		goto disable_clk;

	FUNC13(pdev, host);

	return 0;

disable_clk:
	FUNC2(sdhci->clk);
err_host:
	FUNC16(host);
err:
	FUNC7(&pdev->dev, "spear-sdhci probe failed: %d\n", ret);
	return ret;
}