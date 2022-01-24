#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sdio_func {TYPE_2__* card; } ;
struct sdio_driver {int (* probe ) (struct sdio_func*,struct sdio_device_id const*) ;} ;
struct sdio_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int caps; } ;

/* Variables and functions */
 int ENODEV ; 
 int MMC_CAP_POWER_OFF_CARD ; 
 int FUNC0 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int) ; 
 struct sdio_func* FUNC2 (struct device*) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdio_func*) ; 
 struct sdio_device_id* FUNC6 (struct sdio_func*,struct sdio_driver*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_func*) ; 
 int FUNC8 (struct sdio_func*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sdio_func*,struct sdio_device_id const*) ; 
 struct sdio_driver* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	struct sdio_driver *drv = FUNC10(dev->driver);
	struct sdio_func *func = FUNC2(dev);
	const struct sdio_device_id *id;
	int ret;

	id = FUNC6(func, drv);
	if (!id)
		return -ENODEV;

	ret = FUNC0(dev, false);
	if (ret)
		return ret;

	/* Unbound SDIO functions are always suspended.
	 * During probe, the function is set active and the usage count
	 * is incremented.  If the driver supports runtime PM,
	 * it should call pm_runtime_put_noidle() in its probe routine and
	 * pm_runtime_get_noresume() in its remove routine.
	 */
	if (func->card->host->caps & MMC_CAP_POWER_OFF_CARD) {
		ret = FUNC3(dev);
		if (ret < 0)
			goto disable_runtimepm;
	}

	/* Set the default block size so the driver is sure it's something
	 * sensible. */
	FUNC5(func);
	ret = FUNC8(func, 0);
	FUNC7(func);
	if (ret)
		goto disable_runtimepm;

	ret = drv->probe(func, id);
	if (ret)
		goto disable_runtimepm;

	return 0;

disable_runtimepm:
	if (func->card->host->caps & MMC_CAP_POWER_OFF_CARD)
		FUNC4(dev);
	FUNC1(dev, false);
	return ret;
}