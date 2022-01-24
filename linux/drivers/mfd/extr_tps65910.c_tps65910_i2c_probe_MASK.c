#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tps65910_platform_data {int /*<<< orphan*/  irq; int /*<<< orphan*/  irq_base; } ;
struct tps65910_board {scalar_t__ pm_off; int /*<<< orphan*/  irq_base; int /*<<< orphan*/  irq; } ;
struct tps65910 {unsigned long id; int /*<<< orphan*/  irq_data; TYPE_1__* dev; int /*<<< orphan*/  regmap; struct i2c_client* i2c_client; struct tps65910_board* of_plat_data; } ;
struct i2c_device_id {unsigned long driver_data; } ;
struct TYPE_5__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 struct tps65910_board* FUNC4 (TYPE_1__*) ; 
 void* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct tps65910*) ; 
 scalar_t__ pm_power_off ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct tps65910*,struct tps65910_board*) ; 
 struct i2c_client* tps65910_i2c_client ; 
 int /*<<< orphan*/  FUNC12 (struct tps65910*,int /*<<< orphan*/ ,struct tps65910_platform_data*) ; 
 struct tps65910_board* FUNC13 (struct i2c_client*,unsigned long*) ; 
 scalar_t__ tps65910_power_off ; 
 int /*<<< orphan*/  tps65910_regmap_config ; 
 int /*<<< orphan*/  FUNC14 (struct tps65910*,struct tps65910_board*) ; 
 int /*<<< orphan*/  tps65910s ; 

__attribute__((used)) static int FUNC15(struct i2c_client *i2c,
			      const struct i2c_device_id *id)
{
	struct tps65910 *tps65910;
	struct tps65910_board *pmic_plat_data;
	struct tps65910_board *of_pmic_plat_data = NULL;
	struct tps65910_platform_data *init_data;
	unsigned long chip_id = id->driver_data;
	int ret;

	pmic_plat_data = FUNC4(&i2c->dev);

	if (!pmic_plat_data && i2c->dev.of_node) {
		pmic_plat_data = FUNC13(i2c, &chip_id);
		of_pmic_plat_data = pmic_plat_data;
	}

	if (!pmic_plat_data)
		return -EINVAL;

	init_data = FUNC5(&i2c->dev, sizeof(*init_data), GFP_KERNEL);
	if (init_data == NULL)
		return -ENOMEM;

	tps65910 = FUNC5(&i2c->dev, sizeof(*tps65910), GFP_KERNEL);
	if (tps65910 == NULL)
		return -ENOMEM;

	tps65910->of_plat_data = of_pmic_plat_data;
	FUNC9(i2c, tps65910);
	tps65910->dev = &i2c->dev;
	tps65910->i2c_client = i2c;
	tps65910->id = chip_id;

	/* Work around silicon erratum SWCZ010: the tps65910 may miss the
	 * first I2C transfer. So issue a dummy transfer before the first
	 * real transfer.
	 */
	FUNC8(i2c, "", 1);
	tps65910->regmap = FUNC7(i2c, &tps65910_regmap_config);
	if (FUNC1(tps65910->regmap)) {
		ret = FUNC2(tps65910->regmap);
		FUNC3(&i2c->dev, "regmap initialization failed: %d\n", ret);
		return ret;
	}

	init_data->irq = pmic_plat_data->irq;
	init_data->irq_base = pmic_plat_data->irq_base;

	FUNC12(tps65910, init_data->irq, init_data);
	FUNC11(tps65910, pmic_plat_data);
	FUNC14(tps65910, pmic_plat_data);

	if (pmic_plat_data->pm_off && !pm_power_off) {
		tps65910_i2c_client = i2c;
		pm_power_off = tps65910_power_off;
	}

	ret = FUNC6(tps65910->dev, -1,
				   tps65910s, FUNC0(tps65910s),
				   NULL, 0,
				   FUNC10(tps65910->irq_data));
	if (ret < 0) {
		FUNC3(&i2c->dev, "mfd_add_devices failed: %d\n", ret);
		return ret;
	}

	return ret;
}