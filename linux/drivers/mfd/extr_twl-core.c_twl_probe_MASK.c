#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct twl_private {int dummy; } ;
struct twl_client {struct i2c_client* regmap; struct i2c_client* client; } ;
struct twl4030_platform_data {int /*<<< orphan*/  gpio; int /*<<< orphan*/ * clock; } ;
struct regmap_config {int dummy; } ;
struct platform_device {int dummy; } ;
struct i2c_device_id {int driver_data; int /*<<< orphan*/  name; } ;
struct TYPE_19__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_4__ dev; scalar_t__ irq; scalar_t__ addr; int /*<<< orphan*/  adapter; } ;
struct device_node {int dummy; } ;
struct TYPE_18__ {int /*<<< orphan*/  base; } ;
struct TYPE_17__ {int /*<<< orphan*/  platform_data; } ;
struct TYPE_16__ {int ready; struct twl_client* twl_modules; TYPE_3__* twl_map; int /*<<< orphan*/  twl_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int I2C_SCL_CTRL_PU ; 
 int I2C_SDA_CTRL_PU ; 
 scalar_t__ FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  REG_GPPUPDCTR1 ; 
 int SMARTREFLEX_ENABLE ; 
 int SR_I2C_SCL_CTRL_PU ; 
 int SR_I2C_SDA_CTRL_PU ; 
 int /*<<< orphan*/  TWL4030_CLASS_ID ; 
 int /*<<< orphan*/  TWL4030_DCDC_GLOBAL_CFG ; 
 int /*<<< orphan*/  TWL4030_MODULE_INTBR ; 
 int TWL6030_CLASS ; 
 int /*<<< orphan*/  TWL6030_CLASS_ID ; 
 int /*<<< orphan*/  TWL6032_BASEADD_CHARGER ; 
 int TWL6032_SUBCLASS ; 
 size_t TWL_MODULE_MAIN_CHARGE ; 
 int /*<<< orphan*/  TWL_MODULE_PM_RECEIVER ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (struct twl4030_platform_data*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*,...) ; 
 struct twl4030_platform_data* FUNC7 (TYPE_4__*) ; 
 struct twl_client* FUNC8 (TYPE_4__*,unsigned int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC10 (struct i2c_client*,struct regmap_config const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC13 (struct device_node*,int /*<<< orphan*/ *,TYPE_2__*,TYPE_4__*) ; 
 int FUNC14 (struct platform_device*) ; 
 struct platform_device* FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (TYPE_4__*,scalar_t__) ; 
 TYPE_3__* twl4030_map ; 
 struct regmap_config* twl4030_regmap_config ; 
 int FUNC20 (TYPE_4__*,scalar_t__) ; 
 TYPE_3__* twl6030_map ; 
 struct regmap_config* twl6030_regmap_config ; 
 TYPE_2__* twl_auxdata_lookup ; 
 scalar_t__ FUNC21 () ; 
 unsigned int FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* twl_priv ; 
 int FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (struct i2c_client*) ; 

__attribute__((used)) static int
FUNC27(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct twl4030_platform_data	*pdata = FUNC7(&client->dev);
	struct device_node		*node = client->dev.of_node;
	struct platform_device		*pdev;
	const struct regmap_config	*twl_regmap_config;
	int				irq_base = 0;
	int				status;
	unsigned			i, num_slaves;

	if (!node && !pdata) {
		FUNC6(&client->dev, "no platform data\n");
		return -EINVAL;
	}

	if (twl_priv) {
		FUNC5(&client->dev, "only one instance of %s allowed\n",
			DRIVER_NAME);
		return -EBUSY;
	}

	pdev = FUNC15(DRIVER_NAME, -1);
	if (!pdev) {
		FUNC6(&client->dev, "can't alloc pdev\n");
		return -ENOMEM;
	}

	status = FUNC14(pdev);
	if (status) {
		FUNC16(pdev);
		return status;
	}

	if (FUNC11(client->adapter, I2C_FUNC_I2C) == 0) {
		FUNC5(&client->dev, "can't talk I2C?\n");
		status = -EIO;
		goto free;
	}

	twl_priv = FUNC9(&client->dev, sizeof(struct twl_private),
				GFP_KERNEL);
	if (!twl_priv) {
		status = -ENOMEM;
		goto free;
	}

	if ((id->driver_data) & TWL6030_CLASS) {
		twl_priv->twl_id = TWL6030_CLASS_ID;
		twl_priv->twl_map = &twl6030_map[0];
		/* The charger base address is different in twl6032 */
		if ((id->driver_data) & TWL6032_SUBCLASS)
			twl_priv->twl_map[TWL_MODULE_MAIN_CHARGE].base =
							TWL6032_BASEADD_CHARGER;
		twl_regmap_config = twl6030_regmap_config;
	} else {
		twl_priv->twl_id = TWL4030_CLASS_ID;
		twl_priv->twl_map = &twl4030_map[0];
		twl_regmap_config = twl4030_regmap_config;
	}

	num_slaves = FUNC22();
	twl_priv->twl_modules = FUNC8(&client->dev,
					 num_slaves,
					 sizeof(struct twl_client),
					 GFP_KERNEL);
	if (!twl_priv->twl_modules) {
		status = -ENOMEM;
		goto free;
	}

	for (i = 0; i < num_slaves; i++) {
		struct twl_client *twl = &twl_priv->twl_modules[i];

		if (i == 0) {
			twl->client = client;
		} else {
			twl->client = FUNC12(client->adapter,
						    client->addr + i);
			if (FUNC0(twl->client)) {
				FUNC6(&client->dev,
					"can't attach client %d\n", i);
				status = FUNC1(twl->client);
				goto fail;
			}
		}

		twl->regmap = FUNC10(twl->client,
						   &twl_regmap_config[i]);
		if (FUNC0(twl->regmap)) {
			status = FUNC1(twl->regmap);
			FUNC6(&client->dev,
				"Failed to allocate regmap %d, err: %d\n", i,
				status);
			goto fail;
		}
	}

	twl_priv->ready = true;

	/* setup clock framework */
	FUNC4(&client->dev, pdata ? pdata->clock : NULL);

	/* read TWL IDCODE Register */
	if (FUNC21()) {
		status = FUNC25();
		FUNC2(status < 0, "Error: reading twl_idcode register value\n");
	}

	/* Maybe init the T2 Interrupt subsystem */
	if (client->irq) {
		if (FUNC21()) {
			FUNC18(id->name);
			irq_base = FUNC19(&client->dev, client->irq);
		} else {
			irq_base = FUNC20(&client->dev, client->irq);
		}

		if (irq_base < 0) {
			status = irq_base;
			goto fail;
		}
	}

	/*
	 * Disable TWL4030/TWL5030 I2C Pull-up on I2C1 and I2C4(SR) interface.
	 * Program I2C_SCL_CTRL_PU(bit 0)=0, I2C_SDA_CTRL_PU (bit 2)=0,
	 * SR_I2C_SCL_CTRL_PU(bit 4)=0 and SR_I2C_SDA_CTRL_PU(bit 6)=0.
	 *
	 * Also, always enable SmartReflex bit as that's needed for omaps to
	 * to do anything over I2C4 for voltage scaling even if SmartReflex
	 * is disabled. Without the SmartReflex bit omap sys_clkreq idle
	 * signal will never trigger for retention idle.
	 */
	if (FUNC21()) {
		u8 temp;

		FUNC23(TWL4030_MODULE_INTBR, &temp, REG_GPPUPDCTR1);
		temp &= ~(SR_I2C_SDA_CTRL_PU | SR_I2C_SCL_CTRL_PU | \
			I2C_SDA_CTRL_PU | I2C_SCL_CTRL_PU);
		FUNC24(TWL4030_MODULE_INTBR, temp, REG_GPPUPDCTR1);

		FUNC23(TWL_MODULE_PM_RECEIVER, &temp,
				TWL4030_DCDC_GLOBAL_CFG);
		temp |= SMARTREFLEX_ENABLE;
		FUNC24(TWL_MODULE_PM_RECEIVER, temp,
				 TWL4030_DCDC_GLOBAL_CFG);
	}

	if (node) {
		if (pdata)
			twl_auxdata_lookup[0].platform_data = pdata->gpio;
		status = FUNC13(node, NULL, twl_auxdata_lookup,
					      &client->dev);
	} else {
		status = FUNC3(pdata, irq_base, id->driver_data);
	}

fail:
	if (status < 0)
		FUNC26(client);
free:
	if (status < 0)
		FUNC17(pdev);

	return status;
}