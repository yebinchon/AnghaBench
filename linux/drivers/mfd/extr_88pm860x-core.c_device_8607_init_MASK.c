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
struct pm860x_platform_data {scalar_t__ i2c_port; } ;
struct pm860x_chip {int buck3_double; int /*<<< orphan*/  dev; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ PI2C_PORT ; 
 int /*<<< orphan*/  PM8607_B0_MISC1 ; 
 int PM8607_B0_MISC1_PI2C ; 
 int /*<<< orphan*/  PM8607_BUCK3 ; 
 int PM8607_BUCK3_DOUBLE ; 
 int /*<<< orphan*/  PM8607_CHIP_ID ; 
 int PM8607_VERSION_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pm860x_chip*,struct pm860x_platform_data*) ; 
 int FUNC3 (struct pm860x_chip*,struct pm860x_platform_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct pm860x_chip*,struct pm860x_platform_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct pm860x_chip*,struct pm860x_platform_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct pm860x_chip*,struct pm860x_platform_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct pm860x_chip*,struct pm860x_platform_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct pm860x_chip*,struct pm860x_platform_data*) ; 
 int FUNC9 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct i2c_client*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC11(struct pm860x_chip *chip,
				       struct i2c_client *i2c,
				       struct pm860x_platform_data *pdata)
{
	int data, ret;

	ret = FUNC9(i2c, PM8607_CHIP_ID);
	if (ret < 0) {
		FUNC0(chip->dev, "Failed to read CHIP ID: %d\n", ret);
		goto out;
	}
	switch (ret & PM8607_VERSION_MASK) {
	case 0x40:
	case 0x50:
		FUNC1(chip->dev, "Marvell 88PM8607 (ID: %02x) detected\n",
			 ret);
		break;
	default:
		FUNC0(chip->dev,
			"Failed to detect Marvell 88PM8607. Chip ID: %02x\n",
			ret);
		goto out;
	}

	ret = FUNC9(i2c, PM8607_BUCK3);
	if (ret < 0) {
		FUNC0(chip->dev, "Failed to read BUCK3 register: %d\n", ret);
		goto out;
	}
	if (ret & PM8607_BUCK3_DOUBLE)
		chip->buck3_double = 1;

	ret = FUNC9(i2c, PM8607_B0_MISC1);
	if (ret < 0) {
		FUNC0(chip->dev, "Failed to read MISC1 register: %d\n", ret);
		goto out;
	}

	if (pdata && (pdata->i2c_port == PI2C_PORT))
		data = PM8607_B0_MISC1_PI2C;
	else
		data = 0;
	ret = FUNC10(i2c, PM8607_B0_MISC1, PM8607_B0_MISC1_PI2C, data);
	if (ret < 0) {
		FUNC0(chip->dev, "Failed to access MISC1:%d\n", ret);
		goto out;
	}

	ret = FUNC3(chip, pdata);
	if (ret < 0)
		goto out;

	FUNC6(chip, pdata);
	FUNC7(chip, pdata);
	FUNC4(chip, pdata);
	FUNC8(chip, pdata);
	FUNC5(chip, pdata);
	FUNC2(chip, pdata);
out:
	return;
}