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
typedef  int /*<<< orphan*/  u32 ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mmc_host {int dummy; } ;
struct meson_mx_mmc_host {struct platform_device* core_clk; struct platform_device* cfg_div_clk; struct platform_device* base; int /*<<< orphan*/ * controller_dev; struct platform_device* parent_clk; int /*<<< orphan*/  cmd_timeout; int /*<<< orphan*/  irq_lock; struct mmc_host* mmc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (struct platform_device*) ; 
 int MESON_MX_SDIO_CONF ; 
 int /*<<< orphan*/  MESON_MX_SDIO_CONF_CMD_ARGUMENT_BITS_MASK ; 
 int /*<<< orphan*/  MESON_MX_SDIO_CONF_M_ENDIAN_MASK ; 
 int /*<<< orphan*/  MESON_MX_SDIO_CONF_WRITE_CRC_OK_STATUS_MASK ; 
 int /*<<< orphan*/  MESON_MX_SDIO_CONF_WRITE_NWR_MASK ; 
 int FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct platform_device* FUNC7 (int /*<<< orphan*/ *,struct resource*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct meson_mx_mmc_host*) ; 
 int FUNC9 (struct meson_mx_mmc_host*) ; 
 int /*<<< orphan*/  meson_mx_mmc_irq ; 
 int /*<<< orphan*/  meson_mx_mmc_irq_thread ; 
 int FUNC10 (struct meson_mx_mmc_host*) ; 
 struct platform_device* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct meson_mx_mmc_host*) ; 
 int /*<<< orphan*/  meson_mx_mmc_timeout ; 
 struct mmc_host* FUNC13 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct mmc_host*) ; 
 struct meson_mx_mmc_host* FUNC15 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct meson_mx_mmc_host*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,struct platform_device*) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	struct platform_device *slot_pdev;
	struct mmc_host *mmc;
	struct meson_mx_mmc_host *host;
	struct resource *res;
	int ret, irq;
	u32 conf;

	slot_pdev = FUNC11(&pdev->dev);
	if (!slot_pdev)
		return -ENODEV;
	else if (FUNC1(slot_pdev))
		return FUNC2(slot_pdev);

	mmc = FUNC13(sizeof(*host), &slot_pdev->dev);
	if (!mmc) {
		ret = -ENOMEM;
		goto error_unregister_slot_pdev;
	}

	host = FUNC15(mmc);
	host->mmc = mmc;
	host->controller_dev = &pdev->dev;

	FUNC20(&host->irq_lock);
	FUNC21(&host->cmd_timeout, meson_mx_mmc_timeout, 0);

	FUNC19(pdev, host);

	res = FUNC18(pdev, IORESOURCE_MEM, 0);
	host->base = FUNC7(host->controller_dev, res);
	if (FUNC1(host->base)) {
		ret = FUNC2(host->base);
		goto error_free_mmc;
	}

	irq = FUNC17(pdev, 0);
	ret = FUNC8(host->controller_dev, irq,
					meson_mx_mmc_irq,
					meson_mx_mmc_irq_thread, IRQF_ONESHOT,
					NULL, host);
	if (ret)
		goto error_free_mmc;

	host->core_clk = FUNC6(host->controller_dev, "core");
	if (FUNC1(host->core_clk)) {
		ret = FUNC2(host->core_clk);
		goto error_free_mmc;
	}

	host->parent_clk = FUNC6(host->controller_dev, "clkin");
	if (FUNC1(host->parent_clk)) {
		ret = FUNC2(host->parent_clk);
		goto error_free_mmc;
	}

	ret = FUNC10(host);
	if (ret)
		goto error_free_mmc;

	ret = FUNC4(host->core_clk);
	if (ret) {
		FUNC5(host->controller_dev, "Failed to enable core clock\n");
		goto error_free_mmc;
	}

	ret = FUNC4(host->cfg_div_clk);
	if (ret) {
		FUNC5(host->controller_dev, "Failed to enable MMC clock\n");
		goto error_disable_core_clk;
	}

	conf = 0;
	conf |= FUNC0(MESON_MX_SDIO_CONF_CMD_ARGUMENT_BITS_MASK, 39);
	conf |= FUNC0(MESON_MX_SDIO_CONF_M_ENDIAN_MASK, 0x3);
	conf |= FUNC0(MESON_MX_SDIO_CONF_WRITE_NWR_MASK, 0x2);
	conf |= FUNC0(MESON_MX_SDIO_CONF_WRITE_CRC_OK_STATUS_MASK, 0x2);
	FUNC22(conf, host->base + MESON_MX_SDIO_CONF);

	FUNC12(host);

	ret = FUNC9(host);
	if (ret)
		goto error_disable_clks;

	return 0;

error_disable_clks:
	FUNC3(host->cfg_div_clk);
error_disable_core_clk:
	FUNC3(host->core_clk);
error_free_mmc:
	FUNC14(mmc);
error_unregister_slot_pdev:
	FUNC16(&slot_pdev->dev, NULL);
	return ret;
}