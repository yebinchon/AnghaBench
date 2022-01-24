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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct da9150_pdata {int irq_base; int /*<<< orphan*/  fg_pdata; } ;
struct da9150_fg_pdata {int dummy; } ;
struct da9150 {int irq_base; struct i2c_client* core_qif; int /*<<< orphan*/  regmap_irq_data; int /*<<< orphan*/  irq; int /*<<< orphan*/ * dev; struct i2c_client* regmap; } ;
struct TYPE_4__ {int pdata_size; int /*<<< orphan*/  platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  DA9150_CORE2WIRE_CTRL_A ; 
 int DA9150_CORE_BASE_ADDR_MASK ; 
 size_t DA9150_FG_IDX ; 
 int DA9150_QIF_I2C_ADDR_LSB ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*) ; 
 TYPE_1__* da9150_devs ; 
 int FUNC3 (struct da9150*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  da9150_regmap_config ; 
 int /*<<< orphan*/  da9150_regmap_irq_chip ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 struct da9150_pdata* FUNC5 (int /*<<< orphan*/ *) ; 
 struct da9150* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct da9150*) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct i2c_client*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct da9150 *da9150;
	struct da9150_pdata *pdata = FUNC5(&client->dev);
	int qif_addr;
	int ret;

	da9150 = FUNC6(&client->dev, sizeof(*da9150), GFP_KERNEL);
	if (!da9150)
		return -ENOMEM;

	da9150->dev = &client->dev;
	da9150->irq = client->irq;
	FUNC10(client, da9150);

	da9150->regmap = FUNC7(client, &da9150_regmap_config);
	if (FUNC1(da9150->regmap)) {
		ret = FUNC2(da9150->regmap);
		FUNC4(da9150->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	/* Setup secondary I2C interface for QIF access */
	qif_addr = FUNC3(da9150, DA9150_CORE2WIRE_CTRL_A);
	qif_addr = (qif_addr & DA9150_CORE_BASE_ADDR_MASK) >> 1;
	qif_addr |= DA9150_QIF_I2C_ADDR_LSB;
	da9150->core_qif = FUNC9(client->adapter, qif_addr);
	if (FUNC1(da9150->core_qif)) {
		FUNC4(da9150->dev, "Failed to attach QIF client\n");
		return FUNC2(da9150->core_qif);
	}

	FUNC10(da9150->core_qif, da9150);

	if (pdata) {
		da9150->irq_base = pdata->irq_base;

		da9150_devs[DA9150_FG_IDX].platform_data = pdata->fg_pdata;
		da9150_devs[DA9150_FG_IDX].pdata_size =
			sizeof(struct da9150_fg_pdata);
	} else {
		da9150->irq_base = -1;
	}

	ret = FUNC13(da9150->regmap, da9150->irq,
				  IRQF_TRIGGER_LOW | IRQF_ONESHOT,
				  da9150->irq_base, &da9150_regmap_irq_chip,
				  &da9150->regmap_irq_data);
	if (ret) {
		FUNC4(da9150->dev, "Failed to add regmap irq chip: %d\n",
			ret);
		goto regmap_irq_fail;
	}


	da9150->irq_base = FUNC15(da9150->regmap_irq_data);

	FUNC8(da9150->irq);

	ret = FUNC12(da9150->dev, -1, da9150_devs,
			      FUNC0(da9150_devs), NULL,
			      da9150->irq_base, NULL);
	if (ret) {
		FUNC4(da9150->dev, "Failed to add child devices: %d\n", ret);
		goto mfd_fail;
	}

	return 0;

mfd_fail:
	FUNC14(da9150->irq, da9150->regmap_irq_data);
regmap_irq_fail:
	FUNC11(da9150->core_qif);

	return ret;
}