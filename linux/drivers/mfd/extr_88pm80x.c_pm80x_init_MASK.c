#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct pm80x_chip {struct i2c_client* client; struct i2c_client* companion; int /*<<< orphan*/ * dev; int /*<<< orphan*/  type; struct regmap* regmap; int /*<<< orphan*/  irq; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {scalar_t__ id; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  PM80X_CHIP_ID ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int FUNC3 (struct regmap*) ; 
 TYPE_1__* chip_mapping ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct pm80x_chip*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 struct pm80x_chip* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 struct pm80x_chip* g_pm80x_chip ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct pm80x_chip*) ; 
 int /*<<< orphan*/  pm80x_regmap_config ; 
 int FUNC10 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 

int FUNC11(struct i2c_client *client)
{
	struct pm80x_chip *chip;
	struct regmap *map;
	unsigned int val;
	int i, ret = 0;

	chip =
	    FUNC7(&client->dev, sizeof(struct pm80x_chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	map = FUNC8(client, &pm80x_regmap_config);
	if (FUNC1(map)) {
		ret = FUNC3(map);
		FUNC4(&client->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	chip->client = client;
	chip->regmap = map;

	chip->irq = client->irq;

	chip->dev = &client->dev;
	FUNC5(chip->dev, chip);
	FUNC9(chip->client, chip);

	ret = FUNC10(chip->regmap, PM80X_CHIP_ID, &val);
	if (ret < 0) {
		FUNC4(chip->dev, "Failed to read CHIP ID: %d\n", ret);
		return ret;
	}

	for (i = 0; i < FUNC0(chip_mapping); i++) {
		if (chip_mapping[i].id == FUNC2(val)) {
			chip->type = chip_mapping[i].type;
			break;
		}
	}

	if (i == FUNC0(chip_mapping)) {
		FUNC4(chip->dev,
			"Failed to detect Marvell 88PM800:ChipID[0x%x]\n", val);
		return -EINVAL;
	}

	FUNC6(&client->dev, 1);

	/*
	 * workaround: set g_pm80x_chip to the first probed chip. if the
	 * second chip is probed, just point to the companion to each
	 * other so that pm805 can access those specific register. would
	 * remove it after HW chip fixes the issue.
	 */
	if (!g_pm80x_chip)
		g_pm80x_chip = chip;
	else {
		chip->companion = g_pm80x_chip->client;
		g_pm80x_chip->companion = chip->client;
	}

	return 0;
}