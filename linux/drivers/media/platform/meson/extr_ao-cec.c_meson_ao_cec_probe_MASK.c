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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct meson_ao_cec_device {struct device* adap; int /*<<< orphan*/  notify; struct device* core; struct device* base; struct platform_device* pdev; int /*<<< orphan*/  cec_reg_lock; } ;
struct device {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int CEC_CAP_CONNECTOR_INFO ; 
 int CEC_CAP_DEFAULTS ; 
 int /*<<< orphan*/  CEC_CLK_RATE ; 
 int CEC_GEN_CNTL_REG ; 
 int /*<<< orphan*/  CEC_GEN_CNTL_RESET ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct device* FUNC2 (int /*<<< orphan*/ *,struct meson_ao_cec_device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct device* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int FUNC9 (struct device*) ; 
 int FUNC10 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct device* FUNC13 (int /*<<< orphan*/ *,char*) ; 
 struct device* FUNC14 (int /*<<< orphan*/ *,struct resource*) ; 
 struct meson_ao_cec_device* FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct meson_ao_cec_device*) ; 
 int /*<<< orphan*/  meson_ao_cec_irq ; 
 int /*<<< orphan*/  meson_ao_cec_irq_thread ; 
 int /*<<< orphan*/  meson_ao_cec_ops ; 
 int FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct meson_ao_cec_device*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct device*) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct meson_ao_cec_device *ao_cec;
	struct device *hdmi_dev;
	struct resource *res;
	int ret, irq;

	hdmi_dev = FUNC6(&pdev->dev);

	if (FUNC0(hdmi_dev))
		return FUNC1(hdmi_dev);

	ao_cec = FUNC15(&pdev->dev, sizeof(*ao_cec), GFP_KERNEL);
	if (!ao_cec)
		return -ENOMEM;

	FUNC20(&ao_cec->cec_reg_lock);

	ao_cec->adap = FUNC2(&meson_ao_cec_ops, ao_cec,
					    "meson_ao_cec",
					    CEC_CAP_DEFAULTS |
					    CEC_CAP_CONNECTOR_INFO,
					    1); /* Use 1 for now */
	if (FUNC0(ao_cec->adap))
		return FUNC1(ao_cec->adap);

	ao_cec->notify = FUNC4(hdmi_dev, NULL,
							ao_cec->adap);
	if (!ao_cec->notify) {
		ret = -ENOMEM;
		goto out_probe_adapter;
	}

	ao_cec->adap->owner = THIS_MODULE;

	res = FUNC18(pdev, IORESOURCE_MEM, 0);
	ao_cec->base = FUNC14(&pdev->dev, res);
	if (FUNC0(ao_cec->base)) {
		ret = FUNC1(ao_cec->base);
		goto out_probe_notify;
	}

	irq = FUNC17(pdev, 0);
	ret = FUNC16(&pdev->dev, irq,
					meson_ao_cec_irq,
					meson_ao_cec_irq_thread,
					0, NULL, ao_cec);
	if (ret) {
		FUNC11(&pdev->dev, "irq request failed\n");
		goto out_probe_notify;
	}

	ao_cec->core = FUNC13(&pdev->dev, "core");
	if (FUNC0(ao_cec->core)) {
		FUNC11(&pdev->dev, "core clock request failed\n");
		ret = FUNC1(ao_cec->core);
		goto out_probe_notify;
	}

	ret = FUNC9(ao_cec->core);
	if (ret) {
		FUNC11(&pdev->dev, "core clock enable failed\n");
		goto out_probe_notify;
	}

	ret = FUNC10(ao_cec->core, CEC_CLK_RATE);
	if (ret) {
		FUNC11(&pdev->dev, "core clock set rate failed\n");
		goto out_probe_clk;
	}

	FUNC12(&pdev->dev);

	ao_cec->pdev = pdev;
	FUNC19(pdev, ao_cec);

	ret = FUNC7(ao_cec->adap, &pdev->dev);
	if (ret < 0)
		goto out_probe_clk;

	/* Setup Hardware */
	FUNC21(CEC_GEN_CNTL_RESET,
		       ao_cec->base + CEC_GEN_CNTL_REG);

	return 0;

out_probe_clk:
	FUNC8(ao_cec->core);

out_probe_notify:
	FUNC5(ao_cec->notify);

out_probe_adapter:
	FUNC3(ao_cec->adap);

	FUNC11(&pdev->dev, "CEC controller registration failed\n");

	return ret;
}