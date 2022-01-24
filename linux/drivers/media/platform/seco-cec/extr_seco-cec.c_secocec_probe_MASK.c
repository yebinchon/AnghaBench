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
typedef  scalar_t__ u16 ;
struct secocec_data {struct device* cec_adap; int /*<<< orphan*/  notifier; int /*<<< orphan*/  irq; struct device* dev; struct platform_device* pdev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRA_SMB_BASE_ADDR ; 
 int CEC_CAP_CONNECTOR_INFO ; 
 int CEC_CAP_DEFAULTS ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 scalar_t__ SECOCEC_LATEST_FW ; 
 int /*<<< orphan*/  SECOCEC_MAX_ADDRS ; 
 int /*<<< orphan*/  SECOCEC_VERSION ; 
 struct device* FUNC2 (int /*<<< orphan*/ *,struct secocec_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char const*,struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,struct secocec_data*) ; 
 struct secocec_data* FUNC11 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct secocec_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct secocec_data*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC16 (struct secocec_data*) ; 
 int /*<<< orphan*/  secocec_cec_adap_ops ; 
 struct device* FUNC17 (struct device*,char const**) ; 
 int FUNC18 (struct secocec_data*) ; 
 int /*<<< orphan*/  secocec_irq_handler ; 
 int FUNC19 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct secocec_data *secocec;
	struct device *dev = &pdev->dev;
	struct device *hdmi_dev;
	const char *conn = NULL;
	int ret;
	u16 val;

	hdmi_dev = FUNC17(&pdev->dev, &conn);
	if (FUNC0(hdmi_dev))
		return FUNC1(hdmi_dev);

	secocec = FUNC11(dev, sizeof(*secocec), GFP_KERNEL);
	if (!secocec)
		return -ENOMEM;

	FUNC10(dev, secocec);

	/* Request SMBus regions */
	if (!FUNC15(BRA_SMB_BASE_ADDR, 7, "CEC00001")) {
		FUNC8(dev, "Request memory region failed");
		return -ENXIO;
	}

	secocec->pdev = pdev;
	secocec->dev = dev;

	if (!FUNC13(dev)) {
		FUNC7(dev, "Cannot find any ACPI companion");
		ret = -ENODEV;
		goto err;
	}

	ret = FUNC16(secocec);
	if (ret) {
		FUNC8(dev, "Cannot assign gpio to IRQ");
		ret = -ENODEV;
		goto err;
	}

	/* Firmware version check */
	ret = FUNC19(SECOCEC_VERSION, &val);
	if (ret) {
		FUNC8(dev, "Cannot check fw version");
		goto err;
	}
	if (val < SECOCEC_LATEST_FW) {
		FUNC8(dev, "CEC Firmware not supported (v.%04x). Use ver > v.%04x",
			val, SECOCEC_LATEST_FW);
		ret = -EINVAL;
		goto err;
	}

	ret = FUNC12(dev,
					secocec->irq,
					NULL,
					secocec_irq_handler,
					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
					FUNC9(&pdev->dev), secocec);

	if (ret) {
		FUNC8(dev, "Cannot request IRQ %d", secocec->irq);
		ret = -EIO;
		goto err;
	}

	/* Allocate CEC adapter */
	secocec->cec_adap = FUNC2(&secocec_cec_adap_ops,
						 secocec,
						 FUNC9(dev),
						 CEC_CAP_DEFAULTS |
						 CEC_CAP_CONNECTOR_INFO,
						 SECOCEC_MAX_ADDRS);

	if (FUNC0(secocec->cec_adap)) {
		ret = FUNC1(secocec->cec_adap);
		goto err;
	}

	secocec->notifier = FUNC4(hdmi_dev, conn,
							   secocec->cec_adap);
	if (!secocec->notifier) {
		ret = -ENOMEM;
		goto err_delete_adapter;
	}

	ret = FUNC6(secocec->cec_adap, dev);
	if (ret)
		goto err_notifier;

	ret = FUNC18(secocec);
	if (ret)
		goto err_notifier;

	FUNC14(pdev, secocec);

	FUNC7(dev, "Device registered");

	return ret;

err_notifier:
	FUNC5(secocec->notifier);
err_delete_adapter:
	FUNC3(secocec->cec_adap);
err:
	FUNC8(dev, "%s device probe failed\n", FUNC9(dev));

	return ret;
}