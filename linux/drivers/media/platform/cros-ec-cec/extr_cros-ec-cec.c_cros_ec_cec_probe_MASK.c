#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct cros_ec_device {int /*<<< orphan*/  event_notifier; } ;
struct cros_ec_dev {struct cros_ec_device* ec_dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  notifier_call; } ;
struct cros_ec_cec {struct device* adap; int /*<<< orphan*/  notify; TYPE_6__ notifier; struct cros_ec_device* cros_ec; } ;

/* Variables and functions */
 int CEC_CAP_CONNECTOR_INFO ; 
 int CEC_CAP_DEFAULTS ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 struct device* FUNC3 (int /*<<< orphan*/ *,struct cros_ec_cec*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char const*,struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  cros_ec_cec_event ; 
 struct device* FUNC8 (TYPE_1__*,char const**) ; 
 int /*<<< orphan*/  cros_ec_cec_ops ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 
 struct cros_ec_dev* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*,int) ; 
 struct cros_ec_cec* FUNC12 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct cros_ec_cec*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct cros_ec_dev *ec_dev = FUNC10(pdev->dev.parent);
	struct cros_ec_device *cros_ec = ec_dev->ec_dev;
	struct cros_ec_cec *cros_ec_cec;
	struct device *hdmi_dev;
	const char *conn = NULL;
	int ret;

	hdmi_dev = FUNC8(&pdev->dev, &conn);
	if (FUNC0(hdmi_dev))
		return FUNC1(hdmi_dev);

	cros_ec_cec = FUNC12(&pdev->dev, sizeof(*cros_ec_cec),
				   GFP_KERNEL);
	if (!cros_ec_cec)
		return -ENOMEM;

	FUNC13(pdev, cros_ec_cec);
	cros_ec_cec->cros_ec = cros_ec;

	ret = FUNC11(&pdev->dev, 1);
	if (ret) {
		FUNC9(&pdev->dev, "failed to initialize wakeup\n");
		return ret;
	}

	cros_ec_cec->adap = FUNC3(&cros_ec_cec_ops, cros_ec_cec,
						 DRV_NAME,
						 CEC_CAP_DEFAULTS |
						 CEC_CAP_CONNECTOR_INFO, 1);
	if (FUNC0(cros_ec_cec->adap))
		return FUNC1(cros_ec_cec->adap);

	cros_ec_cec->notify = FUNC5(hdmi_dev, conn,
							     cros_ec_cec->adap);
	if (!cros_ec_cec->notify) {
		ret = -ENOMEM;
		goto out_probe_adapter;
	}

	/* Get CEC events from the EC. */
	cros_ec_cec->notifier.notifier_call = cros_ec_cec_event;
	ret = FUNC2(&cros_ec->event_notifier,
					       &cros_ec_cec->notifier);
	if (ret) {
		FUNC9(&pdev->dev, "failed to register notifier\n");
		goto out_probe_notify;
	}

	ret = FUNC7(cros_ec_cec->adap, &pdev->dev);
	if (ret < 0)
		goto out_probe_notify;

	return 0;

out_probe_notify:
	FUNC6(cros_ec_cec->notify);
out_probe_adapter:
	FUNC4(cros_ec_cec->adap);
	return ret;
}