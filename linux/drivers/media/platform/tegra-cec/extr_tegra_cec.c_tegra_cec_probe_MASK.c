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
struct tegra_cec {scalar_t__ tegra_cec_irq; int /*<<< orphan*/  clk; struct device* adap; int /*<<< orphan*/  notifier; int /*<<< orphan*/ * dev; int /*<<< orphan*/  cec_base; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int CEC_CAP_CONNECTOR_INFO ; 
 int CEC_CAP_DEFAULTS ; 
 int CEC_CAP_MONITOR_ALL ; 
 int /*<<< orphan*/  CEC_MAX_LOG_ADDRS ; 
 int EBUSY ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  TEGRA_CEC_NAME ; 
 struct device* FUNC3 (int /*<<< orphan*/ *,struct tegra_cec*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct device* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_cec* FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct tegra_cec*) ; 
 int /*<<< orphan*/  FUNC20 (struct resource*) ; 
 int /*<<< orphan*/  tegra_cec_irq_handler ; 
 int /*<<< orphan*/  tegra_cec_irq_thread_handler ; 
 int /*<<< orphan*/  tegra_cec_ops ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct device *hdmi_dev;
	struct tegra_cec *cec;
	struct resource *res;
	int ret = 0;

	hdmi_dev = FUNC7(&pdev->dev);

	if (FUNC0(hdmi_dev))
		return FUNC2(hdmi_dev);

	cec = FUNC14(&pdev->dev, sizeof(struct tegra_cec), GFP_KERNEL);

	if (!cec)
		return -ENOMEM;

	res = FUNC18(pdev, IORESOURCE_MEM, 0);

	if (!res) {
		FUNC11(&pdev->dev,
			"Unable to allocate resources for device\n");
		return -EBUSY;
	}

	if (!FUNC15(&pdev->dev, res->start, FUNC20(res),
		pdev->name)) {
		FUNC11(&pdev->dev,
			"Unable to request mem region for device\n");
		return -EBUSY;
	}

	cec->tegra_cec_irq = FUNC17(pdev, 0);

	if (cec->tegra_cec_irq <= 0)
		return -EBUSY;

	cec->cec_base = FUNC13(&pdev->dev, res->start,
					     FUNC20(res));

	if (!cec->cec_base) {
		FUNC11(&pdev->dev, "Unable to grab IOs for device\n");
		return -EBUSY;
	}

	cec->clk = FUNC12(&pdev->dev, "cec");

	if (FUNC1(cec->clk)) {
		FUNC11(&pdev->dev, "Can't get clock for CEC\n");
		return -ENOENT;
	}

	FUNC10(cec->clk);

	/* set context info. */
	cec->dev = &pdev->dev;

	FUNC19(pdev, cec);

	ret = FUNC16(&pdev->dev, cec->tegra_cec_irq,
		tegra_cec_irq_handler, tegra_cec_irq_thread_handler,
		0, "cec_irq", &pdev->dev);

	if (ret) {
		FUNC11(&pdev->dev,
			"Unable to request interrupt for device\n");
		goto err_clk;
	}

	cec->adap = FUNC3(&tegra_cec_ops, cec, TEGRA_CEC_NAME,
			CEC_CAP_DEFAULTS | CEC_CAP_MONITOR_ALL |
			CEC_CAP_CONNECTOR_INFO,
			CEC_MAX_LOG_ADDRS);
	if (FUNC0(cec->adap)) {
		ret = -ENOMEM;
		FUNC11(&pdev->dev, "Couldn't create cec adapter\n");
		goto err_clk;
	}

	cec->notifier = FUNC5(hdmi_dev, NULL,
						       cec->adap);
	if (!cec->notifier) {
		ret = -ENOMEM;
		goto err_adapter;
	}

	ret = FUNC8(cec->adap, &pdev->dev);
	if (ret) {
		FUNC11(&pdev->dev, "Couldn't register device\n");
		goto err_notifier;
	}

	return 0;

err_notifier:
	FUNC6(cec->notifier);
err_adapter:
	FUNC4(cec->adap);
err_clk:
	FUNC9(cec->clk);
	return ret;
}