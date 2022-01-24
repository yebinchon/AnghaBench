#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct regmap_config {int dummy; } ;
struct i2c_device_id {unsigned long driver_data; } ;
struct TYPE_4__ {scalar_t__ of_node; } ;
struct i2c_client {int /*<<< orphan*/  irq; TYPE_1__ dev; } ;
struct arizona {unsigned long type; int /*<<< orphan*/  irq; TYPE_1__* dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_MFD_WM5102 ; 
 int /*<<< orphan*/  CONFIG_MFD_WM5110 ; 
 int /*<<< orphan*/  CONFIG_MFD_WM8997 ; 
 int /*<<< orphan*/  CONFIG_MFD_WM8998 ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  WM1814 133 
#define  WM5102 132 
#define  WM5110 131 
#define  WM8280 130 
#define  WM8997 129 
#define  WM8998 128 
 int FUNC3 (struct arizona*) ; 
 unsigned long FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int) ; 
 struct arizona* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct regmap_config const*) ; 
 struct regmap_config wm5102_i2c_regmap ; 
 struct regmap_config wm5110_i2c_regmap ; 
 struct regmap_config wm8997_i2c_regmap ; 
 struct regmap_config wm8998_i2c_regmap ; 

__attribute__((used)) static int FUNC8(struct i2c_client *i2c,
			     const struct i2c_device_id *id)
{
	struct arizona *arizona;
	const struct regmap_config *regmap_config = NULL;
	unsigned long type;
	int ret;

	if (i2c->dev.of_node)
		type = FUNC4(&i2c->dev);
	else
		type = id->driver_data;

	switch (type) {
	case WM5102:
		if (FUNC0(CONFIG_MFD_WM5102))
			regmap_config = &wm5102_i2c_regmap;
		break;
	case WM5110:
	case WM8280:
		if (FUNC0(CONFIG_MFD_WM5110))
			regmap_config = &wm5110_i2c_regmap;
		break;
	case WM8997:
		if (FUNC0(CONFIG_MFD_WM8997))
			regmap_config = &wm8997_i2c_regmap;
		break;
	case WM8998:
	case WM1814:
		if (FUNC0(CONFIG_MFD_WM8998))
			regmap_config = &wm8998_i2c_regmap;
		break;
	default:
		FUNC5(&i2c->dev, "Unknown device type %ld\n", type);
		return -EINVAL;
	}

	if (!regmap_config) {
		FUNC5(&i2c->dev,
			"No kernel support for device type %ld\n", type);
		return -EINVAL;
	}

	arizona = FUNC6(&i2c->dev, sizeof(*arizona), GFP_KERNEL);
	if (arizona == NULL)
		return -ENOMEM;

	arizona->regmap = FUNC7(i2c, regmap_config);
	if (FUNC1(arizona->regmap)) {
		ret = FUNC2(arizona->regmap);
		FUNC5(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	arizona->type = type;
	arizona->dev = &i2c->dev;
	arizona->irq = i2c->irq;

	return FUNC3(arizona);
}