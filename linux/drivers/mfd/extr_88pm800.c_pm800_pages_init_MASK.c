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
struct pm80x_subchip {void* gpadc_page; void* regmap_gpadc; int /*<<< orphan*/  gpadc_page_addr; void* power_page; void* regmap_power; int /*<<< orphan*/  power_page_addr; } ;
struct pm80x_chip {int /*<<< orphan*/  dev; struct pm80x_subchip* subchip; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC3 (void*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,struct pm80x_chip*) ; 
 int /*<<< orphan*/  pm80x_regmap_config ; 

__attribute__((used)) static int FUNC6(struct pm80x_chip *chip)
{
	struct pm80x_subchip *subchip;
	struct i2c_client *client = chip->client;

	int ret = 0;

	subchip = chip->subchip;
	if (!subchip || !subchip->power_page_addr || !subchip->gpadc_page_addr)
		return -ENODEV;

	/* PM800 block power page */
	subchip->power_page = FUNC4(client->adapter,
					    subchip->power_page_addr);
	if (FUNC0(subchip->power_page)) {
		ret = FUNC1(subchip->power_page);
		goto out;
	}

	subchip->regmap_power = FUNC3(subchip->power_page,
						     &pm80x_regmap_config);
	if (FUNC0(subchip->regmap_power)) {
		ret = FUNC1(subchip->regmap_power);
		FUNC2(chip->dev,
			"Failed to allocate regmap_power: %d\n", ret);
		goto out;
	}

	FUNC5(subchip->power_page, chip);

	/* PM800 block GPADC */
	subchip->gpadc_page = FUNC4(client->adapter,
					    subchip->gpadc_page_addr);
	if (FUNC0(subchip->gpadc_page)) {
		ret = FUNC1(subchip->gpadc_page);
		goto out;
	}

	subchip->regmap_gpadc = FUNC3(subchip->gpadc_page,
						     &pm80x_regmap_config);
	if (FUNC0(subchip->regmap_gpadc)) {
		ret = FUNC1(subchip->regmap_gpadc);
		FUNC2(chip->dev,
			"Failed to allocate regmap_gpadc: %d\n", ret);
		goto out;
	}
	FUNC5(subchip->gpadc_page, chip);

out:
	return ret;
}