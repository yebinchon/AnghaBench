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
struct stih_cec {scalar_t__ irq; int /*<<< orphan*/  adap; int /*<<< orphan*/  notifier; struct device* clk; struct device* regs; struct device* dev; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CEC_CAP_CONNECTOR_INFO ; 
 int CEC_CAP_DEFAULTS ; 
 int /*<<< orphan*/  CEC_MAX_LOG_ADDRS ; 
 int /*<<< orphan*/  CEC_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct stih_cec*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct device* FUNC7 (struct device*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*) ; 
 struct device* FUNC10 (struct device*,char*) ; 
 struct device* FUNC11 (struct device*,struct resource*) ; 
 struct stih_cec* FUNC12 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stih_cec*) ; 
 scalar_t__ FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct stih_cec*) ; 
 int /*<<< orphan*/  sti_cec_adap_ops ; 
 int /*<<< orphan*/  stih_cec_irq_handler ; 
 int /*<<< orphan*/  stih_cec_irq_handler_thread ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *res;
	struct stih_cec *cec;
	struct device *hdmi_dev;
	int ret;

	hdmi_dev = FUNC7(dev);

	if (FUNC0(hdmi_dev))
		return FUNC1(hdmi_dev);

	cec = FUNC12(dev, sizeof(*cec), GFP_KERNEL);
	if (!cec)
		return -ENOMEM;

	cec->dev = dev;

	res = FUNC15(pdev, IORESOURCE_MEM, 0);
	cec->regs = FUNC11(dev, res);
	if (FUNC0(cec->regs))
		return FUNC1(cec->regs);

	cec->irq = FUNC14(pdev, 0);
	if (cec->irq < 0)
		return cec->irq;

	ret = FUNC13(dev, cec->irq, stih_cec_irq_handler,
					stih_cec_irq_handler_thread, 0,
					pdev->name, cec);
	if (ret)
		return ret;

	cec->clk = FUNC10(dev, "cec-clk");
	if (FUNC0(cec->clk)) {
		FUNC9(dev, "Cannot get cec clock\n");
		return FUNC1(cec->clk);
	}

	cec->adap = FUNC3(&sti_cec_adap_ops, cec, CEC_NAME,
					 CEC_CAP_DEFAULTS |
					 CEC_CAP_CONNECTOR_INFO,
					 CEC_MAX_LOG_ADDRS);
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

	FUNC16(pdev, cec);
	return 0;

err_notifier:
	FUNC6(cec->notifier);

err_delete_adapter:
	FUNC4(cec->adap);
	return ret;
}