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
struct max77693_dev {int /*<<< orphan*/  i2c_chg; int /*<<< orphan*/  regmap_chg; TYPE_1__* i2c; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_ADDR_CHG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct max77693_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max77843_charger_regmap_config ; 

__attribute__((used)) static int FUNC7(struct max77693_dev *max77843)
{
	int ret;

	max77843->i2c_chg = FUNC4(max77843->i2c->adapter, I2C_ADDR_CHG);
	if (FUNC0(max77843->i2c_chg)) {
		FUNC2(&max77843->i2c->dev,
				"Cannot allocate I2C device for Charger\n");
		return FUNC1(max77843->i2c_chg);
	}
	FUNC5(max77843->i2c_chg, max77843);

	max77843->regmap_chg = FUNC3(max77843->i2c_chg,
			&max77843_charger_regmap_config);
	if (FUNC0(max77843->regmap_chg)) {
		ret = FUNC1(max77843->regmap_chg);
		goto err_chg_i2c;
	}

	return 0;

err_chg_i2c:
	FUNC6(max77843->i2c_chg);

	return ret;
}