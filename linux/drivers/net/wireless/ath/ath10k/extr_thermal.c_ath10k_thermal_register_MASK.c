#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct thermal_cooling_device {TYPE_1__ device; } ;
struct device {TYPE_1__ device; } ;
struct TYPE_9__ {TYPE_3__* ops; int /*<<< orphan*/  svc_map; } ;
struct TYPE_7__ {int /*<<< orphan*/  quiet_period; struct thermal_cooling_device* cdev; } ;
struct ath10k {TYPE_5__* dev; TYPE_4__ wmi; TYPE_2__ thermal; } ;
struct TYPE_10__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_8__ {int /*<<< orphan*/  gen_pdev_get_temperature; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_QUIET_PERIOD_DEFAULT ; 
 int /*<<< orphan*/  CONFIG_HWMON ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct thermal_cooling_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct thermal_cooling_device*) ; 
 int /*<<< orphan*/  WMI_SERVICE_THERM_THROT ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,...) ; 
 int /*<<< orphan*/  ath10k_hwmon_groups ; 
 int /*<<< orphan*/  ath10k_thermal_ops ; 
 struct thermal_cooling_device* FUNC4 (TYPE_5__*,char*,struct ath10k*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct thermal_cooling_device* FUNC8 (char*,struct ath10k*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct thermal_cooling_device*) ; 

int FUNC10(struct ath10k *ar)
{
	struct thermal_cooling_device *cdev;
	struct device *hwmon_dev;
	int ret;

	if (!FUNC7(WMI_SERVICE_THERM_THROT, ar->wmi.svc_map))
		return 0;

	cdev = FUNC8("ath10k_thermal", ar,
					       &ath10k_thermal_ops);

	if (FUNC0(cdev)) {
		FUNC3(ar, "failed to setup thermal device result: %ld\n",
			   FUNC2(cdev));
		return -EINVAL;
	}

	ret = FUNC5(&ar->dev->kobj, &cdev->device.kobj,
				"cooling_device");
	if (ret) {
		FUNC3(ar, "failed to create cooling device symlink\n");
		goto err_cooling_destroy;
	}

	ar->thermal.cdev = cdev;
	ar->thermal.quiet_period = ATH10K_QUIET_PERIOD_DEFAULT;

	/* Do not register hwmon device when temperature reading is not
	 * supported by firmware
	 */
	if (!(ar->wmi.ops->gen_pdev_get_temperature))
		return 0;

	/* Avoid linking error on devm_hwmon_device_register_with_groups, I
	 * guess linux/hwmon.h is missing proper stubs.
	 */
	if (!FUNC1(CONFIG_HWMON))
		return 0;

	hwmon_dev = FUNC4(ar->dev,
							   "ath10k_hwmon", ar,
							   ath10k_hwmon_groups);
	if (FUNC0(hwmon_dev)) {
		FUNC3(ar, "failed to register hwmon device: %ld\n",
			   FUNC2(hwmon_dev));
		ret = -EINVAL;
		goto err_remove_link;
	}
	return 0;

err_remove_link:
	FUNC6(&ar->dev->kobj, "cooling_device");
err_cooling_destroy:
	FUNC9(cdev);
	return ret;
}