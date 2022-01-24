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
typedef  int /*<<< orphan*/  u8 ;
struct da9052_pdata {int /*<<< orphan*/  (* init ) (struct da9052*) ;} ;
struct da9052 {int /*<<< orphan*/  dev; int /*<<< orphan*/  chip_id; int /*<<< orphan*/  done; int /*<<< orphan*/  auxadc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC1 (struct da9052*) ; 
 int /*<<< orphan*/  FUNC2 (struct da9052*) ; 
 int FUNC3 (struct da9052*) ; 
 int /*<<< orphan*/  da9052_subdev_info ; 
 int /*<<< orphan*/  da9052_tsi_subdev_info ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct da9052_pdata* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct da9052*) ; 

int FUNC13(struct da9052 *da9052, u8 chip_id)
{
	struct da9052_pdata *pdata = FUNC5(da9052->dev);
	int ret;

	FUNC11(&da9052->auxadc_lock);
	FUNC8(&da9052->done);

	ret = FUNC1(da9052);
	if (ret < 0)
		FUNC6(da9052->dev, "Cannot clear FAULT_LOG\n");

	if (pdata && pdata->init != NULL)
		pdata->init(da9052);

	da9052->chip_id = chip_id;

	ret = FUNC3(da9052);
	if (ret != 0) {
		FUNC4(da9052->dev, "da9052_irq_init failed: %d\n", ret);
		return ret;
	}

	ret = FUNC9(da9052->dev, PLATFORM_DEVID_AUTO,
			      da9052_subdev_info,
			      FUNC0(da9052_subdev_info), NULL, 0, NULL);
	if (ret) {
		FUNC4(da9052->dev, "mfd_add_devices failed: %d\n", ret);
		goto err;
	}

	/*
	 * Check if touchscreen pins are used are analogue input instead
	 * of having a touchscreen connected to them. The analogue input
	 * functionality will be provided by hwmon driver (if enabled).
	 */
	if (!FUNC7(da9052->dev, "dlg,tsi-as-adc")) {
		ret = FUNC9(da9052->dev, PLATFORM_DEVID_AUTO,
				      da9052_tsi_subdev_info,
				      FUNC0(da9052_tsi_subdev_info),
				      NULL, 0, NULL);
		if (ret) {
			FUNC4(da9052->dev, "failed to add TSI subdev: %d\n",
				ret);
			goto err;
		}
	}

	return 0;

err:
	FUNC10(da9052->dev);
	FUNC2(da9052);

	return ret;
}