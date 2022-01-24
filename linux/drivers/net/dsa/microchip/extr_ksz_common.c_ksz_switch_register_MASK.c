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
struct ksz_device {int interface; struct ksz_dev_ops const* dev_ops; int /*<<< orphan*/  ds; TYPE_2__* dev; int /*<<< orphan*/  synclko_125; int /*<<< orphan*/  vlan_mutex; int /*<<< orphan*/  alu_mutex; int /*<<< orphan*/  regmap_mutex; int /*<<< orphan*/  dev_mutex; scalar_t__ reset_gpio; TYPE_1__* pdata; int /*<<< orphan*/  chip_id; } ;
struct ksz_dev_ops {int (* init ) (struct ksz_device*) ;int /*<<< orphan*/  (* exit ) (struct ksz_device*) ;scalar_t__ (* detect ) (struct ksz_device*) ;} ;
struct TYPE_4__ {scalar_t__ of_node; } ;
struct TYPE_3__ {int /*<<< orphan*/  chip_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*) ; 
 scalar_t__ FUNC9 (struct ksz_device*) ; 
 int FUNC10 (struct ksz_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct ksz_device*) ; 

int FUNC12(struct ksz_device *dev,
			const struct ksz_dev_ops *ops)
{
	int ret;

	if (dev->pdata)
		dev->chip_id = dev->pdata->chip_id;

	dev->reset_gpio = FUNC2(dev->dev, "reset",
						  GPIOD_OUT_LOW);
	if (FUNC0(dev->reset_gpio))
		return FUNC1(dev->reset_gpio);

	if (dev->reset_gpio) {
		FUNC4(dev->reset_gpio, 1);
		FUNC5(10);
		FUNC4(dev->reset_gpio, 0);
	}

	FUNC6(&dev->dev_mutex);
	FUNC6(&dev->regmap_mutex);
	FUNC6(&dev->alu_mutex);
	FUNC6(&dev->vlan_mutex);

	dev->dev_ops = ops;

	if (dev->dev_ops->detect(dev))
		return -EINVAL;

	ret = dev->dev_ops->init(dev);
	if (ret)
		return ret;

	/* Host port interface will be self detected, or specifically set in
	 * device tree.
	 */
	if (dev->dev->of_node) {
		ret = FUNC7(dev->dev->of_node);
		if (ret >= 0)
			dev->interface = ret;
		dev->synclko_125 = FUNC8(dev->dev->of_node,
							 "microchip,synclko-125");
	}

	ret = FUNC3(dev->ds);
	if (ret) {
		dev->dev_ops->exit(dev);
		return ret;
	}

	return 0;
}