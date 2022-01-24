#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct cros_ec_cec {int /*<<< orphan*/  adap; int /*<<< orphan*/  notify; int /*<<< orphan*/  notifier; TYPE_1__* cros_ec; } ;
struct TYPE_2__ {int /*<<< orphan*/  event_notifier; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct cros_ec_cec* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct cros_ec_cec *cros_ec_cec = FUNC4(pdev);
	struct device *dev = &pdev->dev;
	int ret;

	ret = FUNC0(
			&cros_ec_cec->cros_ec->event_notifier,
			&cros_ec_cec->notifier);

	if (ret) {
		FUNC3(dev, "failed to unregister notifier\n");
		return ret;
	}

	FUNC1(cros_ec_cec->notify);
	FUNC2(cros_ec_cec->adap);

	return 0;
}