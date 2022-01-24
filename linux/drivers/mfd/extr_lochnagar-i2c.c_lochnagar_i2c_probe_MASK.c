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
struct of_device_id {struct lochnagar_config* data; } ;
struct lochnagar_config {unsigned int id; int /*<<< orphan*/  npatch; int /*<<< orphan*/  patch; int /*<<< orphan*/  name; TYPE_1__* regmap; int /*<<< orphan*/  type; } ;
struct lochnagar {struct gpio_desc* regmap; int /*<<< orphan*/  type; int /*<<< orphan*/  analogue_config_lock; struct device* dev; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct gpio_desc {int dummy; } ;
struct TYPE_2__ {unsigned int val_bits; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 unsigned int LOCHNAGAR_DEVICE_ID_MASK ; 
 int /*<<< orphan*/  LOCHNAGAR_FIRMWARE_ID1 ; 
 int /*<<< orphan*/  LOCHNAGAR_FIRMWARE_ID2 ; 
 unsigned int LOCHNAGAR_REV_ID_MASK ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct lochnagar*) ; 
 struct gpio_desc* FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct lochnagar* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*) ; 
 struct gpio_desc* FUNC9 (struct i2c_client*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct gpio_desc*,int) ; 
 int /*<<< orphan*/  lochnagar_of_match ; 
 int FUNC11 (struct gpio_desc*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC14 (int /*<<< orphan*/ ,struct device*) ; 
 int FUNC15 (struct gpio_desc*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC16 (struct gpio_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct i2c_client *i2c)
{
	struct device *dev = &i2c->dev;
	const struct lochnagar_config *config = NULL;
	const struct of_device_id *of_id;
	struct lochnagar *lochnagar;
	struct gpio_desc *reset, *present;
	unsigned int val;
	unsigned int firmwareid;
	unsigned int devid, rev;
	int ret;

	lochnagar = FUNC7(dev, sizeof(*lochnagar), GFP_KERNEL);
	if (!lochnagar)
		return -ENOMEM;

	of_id = FUNC14(lochnagar_of_match, dev);
	if (!of_id)
		return -EINVAL;

	config = of_id->data;

	lochnagar->dev = dev;
	FUNC13(&lochnagar->analogue_config_lock);

	FUNC4(dev, lochnagar);

	reset = FUNC5(dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(reset)) {
		ret = FUNC1(reset);
		FUNC2(dev, "Failed to get reset GPIO: %d\n", ret);
		return ret;
	}

	present = FUNC6(dev, "present", GPIOD_OUT_HIGH);
	if (FUNC0(present)) {
		ret = FUNC1(present);
		FUNC2(dev, "Failed to get present GPIO: %d\n", ret);
		return ret;
	}

	/* Leave the Lochnagar in reset for a reasonable amount of time */
	FUNC12(20);

	/* Bring Lochnagar out of reset */
	FUNC10(reset, 1);

	/* Identify Lochnagar */
	lochnagar->type = config->type;

	lochnagar->regmap = FUNC9(i2c, config->regmap);
	if (FUNC0(lochnagar->regmap)) {
		ret = FUNC1(lochnagar->regmap);
		FUNC2(dev, "Failed to allocate register map: %d\n", ret);
		return ret;
	}

	/* Wait for Lochnagar to boot */
	ret = FUNC11(lochnagar->regmap, &val);
	if (ret < 0) {
		FUNC2(dev, "Failed to read device ID: %d\n", ret);
		return ret;
	}

	devid = val & LOCHNAGAR_DEVICE_ID_MASK;
	rev = val & LOCHNAGAR_REV_ID_MASK;

	if (devid != config->id) {
		FUNC2(dev,
			"ID does not match %s (expected 0x%x got 0x%x)\n",
			config->name, config->id, devid);
		return -ENODEV;
	}

	/* Identify firmware */
	ret = FUNC15(lochnagar->regmap, LOCHNAGAR_FIRMWARE_ID1, &val);
	if (ret < 0) {
		FUNC2(dev, "Failed to read firmware id 1: %d\n", ret);
		return ret;
	}

	firmwareid = val;

	ret = FUNC15(lochnagar->regmap, LOCHNAGAR_FIRMWARE_ID2, &val);
	if (ret < 0) {
		FUNC2(dev, "Failed to read firmware id 2: %d\n", ret);
		return ret;
	}

	firmwareid |= (val << config->regmap->val_bits);

	FUNC3(dev, "Found %s (0x%x) revision %u firmware 0x%.6x\n",
		 config->name, devid, rev + 1, firmwareid);

	ret = FUNC16(lochnagar->regmap, config->patch,
				    config->npatch);
	if (ret < 0) {
		FUNC2(dev, "Failed to register patch: %d\n", ret);
		return ret;
	}

	ret = FUNC8(dev);
	if (ret < 0) {
		FUNC2(dev, "Failed to populate child nodes: %d\n", ret);
		return ret;
	}

	return ret;
}