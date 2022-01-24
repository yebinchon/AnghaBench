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
struct sdio_func {TYPE_1__* card; scalar_t__ irq_handler; } ;
struct sdio_driver {int /*<<< orphan*/  name; int /*<<< orphan*/  (* remove ) (struct sdio_func*) ;} ;
struct device {int /*<<< orphan*/  driver; } ;
struct TYPE_4__ {int caps; } ;
struct TYPE_3__ {TYPE_2__* host; } ;

/* Variables and functions */
 int MMC_CAP_POWER_OFF_CARD ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int) ; 
 struct sdio_func* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC9 (struct sdio_func*) ; 
 struct sdio_driver* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	struct sdio_driver *drv = FUNC10(dev->driver);
	struct sdio_func *func = FUNC1(dev);

	/* Make sure card is powered before invoking ->remove() */
	if (func->card->host->caps & MMC_CAP_POWER_OFF_CARD)
		FUNC2(dev);

	drv->remove(func);

	if (func->irq_handler) {
		FUNC5("WARNING: driver %s did not remove its interrupt handler!\n",
			drv->name);
		FUNC6(func);
		FUNC8(func);
		FUNC7(func);
	}

	/* First, undo the increment made directly above */
	if (func->card->host->caps & MMC_CAP_POWER_OFF_CARD)
		FUNC3(dev);

	/* Then undo the runtime PM settings in sdio_bus_probe() */
	if (func->card->host->caps & MMC_CAP_POWER_OFF_CARD)
		FUNC4(dev);

	FUNC0(dev, false);

	return 0;
}