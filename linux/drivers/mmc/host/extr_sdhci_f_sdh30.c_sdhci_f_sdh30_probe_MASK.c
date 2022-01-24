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
typedef  int u32 ;
struct sdhci_host {int quirks; int quirks2; char* hw_name; int irq; struct sdhci_host* ioaddr; int /*<<< orphan*/ * ops; int /*<<< orphan*/  mmc; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct f_sdhost_priv {struct sdhci_host* clk_iface; struct sdhci_host* clk; int /*<<< orphan*/  vendor_hs200; int /*<<< orphan*/  enable_cmd_dat_delay; struct device* dev; } ;

/* Variables and functions */
 int F_SDH30_AHB_BIGED ; 
 int /*<<< orphan*/  F_SDH30_AHB_CONFIG ; 
 int F_SDH30_AHB_INCR_16 ; 
 int F_SDH30_AHB_INCR_4 ; 
 int F_SDH30_AHB_INCR_8 ; 
 int F_SDH30_BUSLOCK_EN ; 
 int /*<<< orphan*/  F_SDH30_EMMC_HS200 ; 
 int F_SDH30_EMMC_RST ; 
 int /*<<< orphan*/  F_SDH30_ESD_CONTROL ; 
 int F_SDH30_SIN ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct sdhci_host*) ; 
 int FUNC1 (struct sdhci_host*) ; 
 int SDHCI_CAN_DO_8BIT ; 
 int /*<<< orphan*/  SDHCI_CAPABILITIES ; 
 int SDHCI_QUIRK2_SUPPORT_SINGLE ; 
 int SDHCI_QUIRK2_TUNING_WORK_AROUND ; 
 int SDHCI_QUIRK_INVERTED_WRITE_PROTECT ; 
 int SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*) ; 
 int FUNC3 (struct sdhci_host*) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 void* FUNC6 (struct device*,char*) ; 
 struct sdhci_host* FUNC7 (struct device*,struct resource*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct sdhci_host*) ; 
 int FUNC13 (struct sdhci_host*) ; 
 struct sdhci_host* FUNC14 (struct device*,int) ; 
 int /*<<< orphan*/  sdhci_f_sdh30_ops ; 
 int /*<<< orphan*/  FUNC15 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*) ; 
 struct f_sdhost_priv* FUNC17 (struct sdhci_host*) ; 
 int FUNC18 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct sdhci_host *host;
	struct device *dev = &pdev->dev;
	struct resource *res;
	int irq, ctrl = 0, ret = 0;
	struct f_sdhost_priv *priv;
	u32 reg = 0;

	irq = FUNC10(pdev, 0);
	if (irq < 0)
		return irq;

	host = FUNC14(dev, sizeof(struct f_sdhost_priv));
	if (FUNC0(host))
		return FUNC1(host);

	priv = FUNC17(host);
	priv->dev = dev;

	host->quirks = SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC |
		       SDHCI_QUIRK_INVERTED_WRITE_PROTECT;
	host->quirks2 = SDHCI_QUIRK2_SUPPORT_SINGLE |
			SDHCI_QUIRK2_TUNING_WORK_AROUND;

	priv->enable_cmd_dat_delay = FUNC5(dev,
						"fujitsu,cmd-dat-delay-select");

	ret = FUNC8(host->mmc);
	if (ret)
		goto err;

	FUNC12(pdev, host);

	host->hw_name = "f_sdh30";
	host->ops = &sdhci_f_sdh30_ops;
	host->irq = irq;

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	host->ioaddr = FUNC7(&pdev->dev, res);
	if (FUNC0(host->ioaddr)) {
		ret = FUNC1(host->ioaddr);
		goto err;
	}

	if (FUNC4(dev)) {
		FUNC16(pdev);

		priv->clk_iface = FUNC6(&pdev->dev, "iface");
		if (FUNC0(priv->clk_iface)) {
			ret = FUNC1(priv->clk_iface);
			goto err;
		}

		ret = FUNC3(priv->clk_iface);
		if (ret)
			goto err;

		priv->clk = FUNC6(&pdev->dev, "core");
		if (FUNC0(priv->clk)) {
			ret = FUNC1(priv->clk);
			goto err_clk;
		}

		ret = FUNC3(priv->clk);
		if (ret)
			goto err_clk;
	}

	/* init vendor specific regs */
	ctrl = FUNC19(host, F_SDH30_AHB_CONFIG);
	ctrl |= F_SDH30_SIN | F_SDH30_AHB_INCR_16 | F_SDH30_AHB_INCR_8 |
		F_SDH30_AHB_INCR_4;
	ctrl &= ~(F_SDH30_AHB_BIGED | F_SDH30_BUSLOCK_EN);
	FUNC21(host, ctrl, F_SDH30_AHB_CONFIG);

	reg = FUNC18(host, F_SDH30_ESD_CONTROL);
	FUNC20(host, reg & ~F_SDH30_EMMC_RST, F_SDH30_ESD_CONTROL);
	FUNC9(20);
	FUNC20(host, reg | F_SDH30_EMMC_RST, F_SDH30_ESD_CONTROL);

	reg = FUNC18(host, SDHCI_CAPABILITIES);
	if (reg & SDHCI_CAN_DO_8BIT)
		priv->vendor_hs200 = F_SDH30_EMMC_HS200;

	ret = FUNC13(host);
	if (ret)
		goto err_add_host;

	return 0;

err_add_host:
	FUNC2(priv->clk);
err_clk:
	FUNC2(priv->clk_iface);
err:
	FUNC15(host);
	return ret;
}