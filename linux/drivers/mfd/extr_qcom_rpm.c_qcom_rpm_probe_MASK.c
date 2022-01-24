#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct resource {int dummy; } ;
struct qcom_rpm {TYPE_1__* data; int /*<<< orphan*/  ipc_bit; int /*<<< orphan*/  ipc_offset; int /*<<< orphan*/ * ipc_regmap; int /*<<< orphan*/ * status_regs; int /*<<< orphan*/ * req_regs; int /*<<< orphan*/ * ctrl_regs; int /*<<< orphan*/ * ramclk; int /*<<< orphan*/  ack; int /*<<< orphan*/  lock; TYPE_2__* dev; } ;
struct TYPE_13__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {TYPE_1__* data; } ;
struct device_node {int dummy; } ;
struct TYPE_12__ {scalar_t__ version; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qcom_rpm*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qcom_rpm*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct qcom_rpm*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_2__*,struct resource*) ; 
 struct qcom_rpm* FUNC11 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct qcom_rpm*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC16 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (struct device_node*) ; 
 struct device_node* FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC20 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC21 (struct platform_device*,char*) ; 
 struct resource* FUNC22 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qcom_rpm_ack_interrupt ; 
 int /*<<< orphan*/  qcom_rpm_err_interrupt ; 
 int /*<<< orphan*/  qcom_rpm_of_match ; 
 int /*<<< orphan*/  qcom_rpm_wakeup_interrupt ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC24 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	const struct of_device_id *match;
	struct device_node *syscon_np;
	struct resource *res;
	struct qcom_rpm *rpm;
	u32 fw_version[3];
	int irq_wakeup;
	int irq_ack;
	int irq_err;
	int ret;

	rpm = FUNC11(&pdev->dev, sizeof(*rpm), GFP_KERNEL);
	if (!rpm)
		return -ENOMEM;

	rpm->dev = &pdev->dev;
	FUNC15(&rpm->lock);
	FUNC13(&rpm->ack);

	/* Enable message RAM clock */
	rpm->ramclk = FUNC9(&pdev->dev, "ram");
	if (FUNC0(rpm->ramclk)) {
		ret = FUNC1(rpm->ramclk);
		if (ret == -EPROBE_DEFER)
			return ret;
		/*
		 * Fall through in all other cases, as the clock is
		 * optional. (Does not exist on all platforms.)
		 */
		rpm->ramclk = NULL;
	}
	FUNC4(rpm->ramclk); /* Accepts NULL */

	irq_ack = FUNC21(pdev, "ack");
	if (irq_ack < 0)
		return irq_ack;

	irq_err = FUNC21(pdev, "err");
	if (irq_err < 0)
		return irq_err;

	irq_wakeup = FUNC21(pdev, "wakeup");
	if (irq_wakeup < 0)
		return irq_wakeup;

	match = FUNC16(qcom_rpm_of_match, &pdev->dev);
	if (!match)
		return -ENODEV;
	rpm->data = match->data;

	res = FUNC22(pdev, IORESOURCE_MEM, 0);
	rpm->status_regs = FUNC10(&pdev->dev, res);
	if (FUNC0(rpm->status_regs))
		return FUNC1(rpm->status_regs);
	rpm->ctrl_regs = rpm->status_regs + 0x400;
	rpm->req_regs = rpm->status_regs + 0x600;

	syscon_np = FUNC18(pdev->dev.of_node, "qcom,ipc", 0);
	if (!syscon_np) {
		FUNC5(&pdev->dev, "no qcom,ipc node\n");
		return -ENODEV;
	}

	rpm->ipc_regmap = FUNC24(syscon_np);
	FUNC17(syscon_np);
	if (FUNC0(rpm->ipc_regmap))
		return FUNC1(rpm->ipc_regmap);

	ret = FUNC20(pdev->dev.of_node, "qcom,ipc", 1,
					 &rpm->ipc_offset);
	if (ret < 0) {
		FUNC5(&pdev->dev, "no offset in qcom,ipc\n");
		return -EINVAL;
	}

	ret = FUNC20(pdev->dev.of_node, "qcom,ipc", 2,
					 &rpm->ipc_bit);
	if (ret < 0) {
		FUNC5(&pdev->dev, "no bit in qcom,ipc\n");
		return -EINVAL;
	}

	FUNC7(&pdev->dev, rpm);

	fw_version[0] = FUNC23(FUNC3(rpm, 0));
	fw_version[1] = FUNC23(FUNC3(rpm, 1));
	fw_version[2] = FUNC23(FUNC3(rpm, 2));
	if (fw_version[0] != rpm->data->version) {
		FUNC5(&pdev->dev,
			"RPM version %u.%u.%u incompatible with driver version %u",
			fw_version[0],
			fw_version[1],
			fw_version[2],
			rpm->data->version);
		return -EFAULT;
	}

	FUNC25(fw_version[0], FUNC2(rpm, 0));
	FUNC25(fw_version[1], FUNC2(rpm, 1));
	FUNC25(fw_version[2], FUNC2(rpm, 2));

	FUNC6(&pdev->dev, "RPM firmware %u.%u.%u\n", fw_version[0],
							fw_version[1],
							fw_version[2]);

	ret = FUNC12(&pdev->dev,
			       irq_ack,
			       qcom_rpm_ack_interrupt,
			       IRQF_TRIGGER_RISING,
			       "qcom_rpm_ack",
			       rpm);
	if (ret) {
		FUNC5(&pdev->dev, "failed to request ack interrupt\n");
		return ret;
	}

	ret = FUNC14(irq_ack, 1);
	if (ret)
		FUNC8(&pdev->dev, "failed to mark ack irq as wakeup\n");

	ret = FUNC12(&pdev->dev,
			       irq_err,
			       qcom_rpm_err_interrupt,
			       IRQF_TRIGGER_RISING,
			       "qcom_rpm_err",
			       rpm);
	if (ret) {
		FUNC5(&pdev->dev, "failed to request err interrupt\n");
		return ret;
	}

	ret = FUNC12(&pdev->dev,
			       irq_wakeup,
			       qcom_rpm_wakeup_interrupt,
			       IRQF_TRIGGER_RISING,
			       "qcom_rpm_wakeup",
			       rpm);
	if (ret) {
		FUNC5(&pdev->dev, "failed to request wakeup interrupt\n");
		return ret;
	}

	ret = FUNC14(irq_wakeup, 1);
	if (ret)
		FUNC8(&pdev->dev, "failed to mark wakeup irq as wakeup\n");

	return FUNC19(pdev->dev.of_node, NULL, NULL, &pdev->dev);
}