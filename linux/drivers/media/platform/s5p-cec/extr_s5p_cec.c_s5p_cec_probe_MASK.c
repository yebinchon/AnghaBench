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
struct s5p_cec_dev {scalar_t__ irq; int /*<<< orphan*/  adap; int /*<<< orphan*/  notifier; struct device* reg; struct device* pmu; struct device* clk; struct device* dev; } ;
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CEC_CAP_CONNECTOR_INFO ; 
 int CEC_CAP_DEFAULTS ; 
 int CEC_CAP_NEEDS_HPD ; 
 int /*<<< orphan*/  CEC_NAME ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct s5p_cec_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct device* FUNC7 (struct device*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*) ; 
 struct device* FUNC10 (struct device*,char*) ; 
 struct device* FUNC11 (struct device*,struct resource*) ; 
 struct s5p_cec_dev* FUNC12 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct s5p_cec_dev*) ; 
 int FUNC14 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct s5p_cec_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int /*<<< orphan*/  s5p_cec_adap_ops ; 
 int /*<<< orphan*/  s5p_cec_irq_handler ; 
 int /*<<< orphan*/  s5p_cec_irq_handler_thread ; 
 struct device* FUNC19 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device *hdmi_dev;
	struct resource *res;
	struct s5p_cec_dev *cec;
	bool needs_hpd = FUNC14(pdev->dev.of_node, "needs-hpd");
	int ret;

	hdmi_dev = FUNC7(dev);

	if (FUNC0(hdmi_dev))
		return FUNC1(hdmi_dev);

	cec = FUNC12(&pdev->dev, sizeof(*cec), GFP_KERNEL);
	if (!cec)
		return -ENOMEM;

	cec->dev = dev;

	cec->irq = FUNC15(pdev, 0);
	if (cec->irq < 0)
		return cec->irq;

	ret = FUNC13(dev, cec->irq, s5p_cec_irq_handler,
		s5p_cec_irq_handler_thread, 0, pdev->name, cec);
	if (ret)
		return ret;

	cec->clk = FUNC10(dev, "hdmicec");
	if (FUNC0(cec->clk))
		return FUNC1(cec->clk);

	cec->pmu = FUNC19(dev->of_node,
						 "samsung,syscon-phandle");
	if (FUNC0(cec->pmu))
		return -EPROBE_DEFER;

	res = FUNC16(pdev, IORESOURCE_MEM, 0);
	cec->reg = FUNC11(dev, res);
	if (FUNC0(cec->reg))
		return FUNC1(cec->reg);

	cec->adap = FUNC3(&s5p_cec_adap_ops, cec, CEC_NAME,
		CEC_CAP_DEFAULTS | (needs_hpd ? CEC_CAP_NEEDS_HPD : 0) |
		CEC_CAP_CONNECTOR_INFO, 1);
	ret = FUNC2(cec->adap);
	if (ret)
		return ret;

	cec->notifier = FUNC5(hdmi_dev, NULL,
						       cec->adap);
	if (!cec->notifier) {
		ret = -ENOMEM;
		goto err_delete_adapter;
	}

	ret = FUNC8(cec->adap, &pdev->dev);
	if (ret)
		goto err_notifier;

	FUNC17(pdev, cec);
	FUNC18(dev);

	FUNC9(dev, "successfully probed\n");
	return 0;

err_notifier:
	FUNC6(cec->notifier);

err_delete_adapter:
	FUNC4(cec->adap);
	return ret;
}