#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tps6586x_platform_data {scalar_t__ pm_off; int /*<<< orphan*/  irq_base; } ;
struct tps6586x {int version; TYPE_1__* dev; int /*<<< orphan*/  irq_domain; int /*<<< orphan*/  regmap; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_7__ {scalar_t__ of_node; } ;
struct i2c_client {int /*<<< orphan*/  irq; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TPS6586X_VERSIONCRC ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 struct tps6586x_platform_data* FUNC4 (TYPE_1__*) ; 
 struct tps6586x* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct tps6586x*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct tps6586x*) ; 
 int FUNC9 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 scalar_t__ pm_power_off ; 
 int FUNC12 (struct tps6586x*,struct tps6586x_platform_data*) ; 
 int /*<<< orphan*/  tps6586x_cell ; 
 TYPE_1__* tps6586x_dev ; 
 int FUNC13 (struct tps6586x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tps6586x_platform_data* FUNC14 (struct i2c_client*) ; 
 scalar_t__ tps6586x_power_off ; 
 int /*<<< orphan*/  FUNC15 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  tps6586x_regmap_config ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client,
					const struct i2c_device_id *id)
{
	struct tps6586x_platform_data *pdata = FUNC4(&client->dev);
	struct tps6586x *tps6586x;
	int ret;
	int version;

	if (!pdata && client->dev.of_node)
		pdata = FUNC14(client);

	if (!pdata) {
		FUNC3(&client->dev, "tps6586x requires platform data\n");
		return -ENOTSUPP;
	}

	version = FUNC9(client, TPS6586X_VERSIONCRC);
	if (version < 0) {
		FUNC3(&client->dev, "Chip ID read failed: %d\n", version);
		return -EIO;
	}

	tps6586x = FUNC5(&client->dev, sizeof(*tps6586x), GFP_KERNEL);
	if (!tps6586x)
		return -ENOMEM;

	tps6586x->version = version;
	FUNC15(client, tps6586x->version);

	tps6586x->client = client;
	tps6586x->dev = &client->dev;
	FUNC8(client, tps6586x);

	tps6586x->regmap = FUNC6(client,
					&tps6586x_regmap_config);
	if (FUNC1(tps6586x->regmap)) {
		ret = FUNC2(tps6586x->regmap);
		FUNC3(&client->dev, "regmap init failed: %d\n", ret);
		return ret;
	}


	if (client->irq) {
		ret = FUNC13(tps6586x, client->irq,
					pdata->irq_base);
		if (ret) {
			FUNC3(&client->dev, "IRQ init failed: %d\n", ret);
			return ret;
		}
	}

	ret = FUNC10(tps6586x->dev, -1,
			      tps6586x_cell, FUNC0(tps6586x_cell),
			      NULL, 0, tps6586x->irq_domain);
	if (ret < 0) {
		FUNC3(&client->dev, "mfd_add_devices failed: %d\n", ret);
		goto err_mfd_add;
	}

	ret = FUNC12(tps6586x, pdata);
	if (ret) {
		FUNC3(&client->dev, "add devices failed: %d\n", ret);
		goto err_add_devs;
	}

	if (pdata->pm_off && !pm_power_off) {
		tps6586x_dev = &client->dev;
		pm_power_off = tps6586x_power_off;
	}

	return 0;

err_add_devs:
	FUNC11(tps6586x->dev);
err_mfd_add:
	if (client->irq)
		FUNC7(client->irq, tps6586x);
	return ret;
}