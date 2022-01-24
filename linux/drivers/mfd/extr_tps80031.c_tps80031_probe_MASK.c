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
typedef  int /*<<< orphan*/  uint8_t ;
struct tps80031_platform_data {scalar_t__ use_power_off; int /*<<< orphan*/  irq_base; } ;
struct tps80031 {int /*<<< orphan*/  irq_data; int /*<<< orphan*/ * dev; int /*<<< orphan*/  chip_info; int /*<<< orphan*/  es_version; struct i2c_client** regmap; struct i2c_client** clients; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct i2c_client {scalar_t__ addr; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  TPS80031_EPROM_REV ; 
 int /*<<< orphan*/  TPS80031_JTAGVERNUM ; 
 int TPS80031_NUM_SLAVES ; 
 int /*<<< orphan*/  TPS80031_SLAVE_ID3 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct tps80031_platform_data* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 struct tps80031* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct tps80031*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pm_power_off ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tps80031_cell ; 
 int /*<<< orphan*/  FUNC13 (struct tps80031*,struct tps80031_platform_data*) ; 
 int FUNC14 (struct tps80031*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ tps80031_power_off ; 
 struct tps80031* tps80031_power_off_dev ; 
 int /*<<< orphan*/  FUNC15 (struct tps80031*,struct tps80031_platform_data*) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * tps80031_regmap_configs ; 
 scalar_t__* tps80031_slave_address ; 

__attribute__((used)) static int FUNC17(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct tps80031_platform_data *pdata = FUNC4(&client->dev);
	struct tps80031 *tps80031;
	int ret;
	uint8_t es_version;
	uint8_t ep_ver;
	int i;

	if (!pdata) {
		FUNC3(&client->dev, "tps80031 requires platform data\n");
		return -EINVAL;
	}

	tps80031 = FUNC7(&client->dev, sizeof(*tps80031), GFP_KERNEL);
	if (!tps80031)
		return -ENOMEM;

	for (i = 0; i < TPS80031_NUM_SLAVES; i++) {
		if (tps80031_slave_address[i] == client->addr)
			tps80031->clients[i] = client;
		else
			tps80031->clients[i] = FUNC6(&client->dev,
						client->adapter, tps80031_slave_address[i]);
		if (FUNC1(tps80031->clients[i])) {
			FUNC3(&client->dev, "can't attach client %d\n", i);
			return FUNC2(tps80031->clients[i]);
		}

		FUNC9(tps80031->clients[i], tps80031);
		tps80031->regmap[i] = FUNC8(tps80031->clients[i],
					&tps80031_regmap_configs[i]);
		if (FUNC1(tps80031->regmap[i])) {
			ret = FUNC2(tps80031->regmap[i]);
			FUNC3(&client->dev,
				"regmap %d init failed, err %d\n", i, ret);
			return ret;
		}
	}

	ret = FUNC16(&client->dev, TPS80031_SLAVE_ID3,
			TPS80031_JTAGVERNUM, &es_version);
	if (ret < 0) {
		FUNC3(&client->dev,
			"Silicon version number read failed: %d\n", ret);
		return ret;
	}

	ret = FUNC16(&client->dev, TPS80031_SLAVE_ID3,
			TPS80031_EPROM_REV, &ep_ver);
	if (ret < 0) {
		FUNC3(&client->dev,
			"Silicon eeprom version read failed: %d\n", ret);
		return ret;
	}

	FUNC5(&client->dev, "ES version 0x%02x and EPROM version 0x%02x\n",
					es_version, ep_ver);
	tps80031->es_version = es_version;
	tps80031->dev = &client->dev;
	FUNC9(client, tps80031);
	tps80031->chip_info = id->driver_data;

	ret = FUNC14(tps80031, client->irq, pdata->irq_base);
	if (ret) {
		FUNC3(&client->dev, "IRQ init failed: %d\n", ret);
		return ret;
	}

	FUNC15(tps80031, pdata);

	FUNC13(tps80031, pdata);

	ret = FUNC10(tps80031->dev, -1,
			tps80031_cell, FUNC0(tps80031_cell),
			NULL, 0,
			FUNC12(tps80031->irq_data));
	if (ret < 0) {
		FUNC3(&client->dev, "mfd_add_devices failed: %d\n", ret);
		goto fail_mfd_add;
	}

	if (pdata->use_power_off && !pm_power_off) {
		tps80031_power_off_dev = tps80031;
		pm_power_off = tps80031_power_off;
	}
	return 0;

fail_mfd_add:
	FUNC11(client->irq, tps80031->irq_data);
	return ret;
}