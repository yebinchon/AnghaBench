#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tda10071_platform_data {int /*<<< orphan*/  get_dvb_frontend; int /*<<< orphan*/  tuner_i2c_addr; int /*<<< orphan*/  pll_multiplier; int /*<<< orphan*/  spec_inv; int /*<<< orphan*/  ts_mode; int /*<<< orphan*/  i2c_wr_max; int /*<<< orphan*/  clk; } ;
struct TYPE_4__ {struct tda10071_dev* demodulator_priv; int /*<<< orphan*/  ops; } ;
struct tda10071_dev {TYPE_1__ fe; int /*<<< orphan*/  regmap; int /*<<< orphan*/  tuner_i2c_addr; int /*<<< orphan*/  pll_multiplier; int /*<<< orphan*/  spec_inv; int /*<<< orphan*/  ts_mode; int /*<<< orphan*/  i2c_wr_max; int /*<<< orphan*/  clk; int /*<<< orphan*/  cmd_execute_mutex; struct i2c_client* client; } ;
struct regmap_config {int reg_bits; int val_bits; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_5__ {struct tda10071_platform_data* platform_data; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct dvb_frontend_ops {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct regmap_config const*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct tda10071_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct tda10071_dev*) ; 
 struct tda10071_dev* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 int /*<<< orphan*/  tda10071_get_dvb_frontend ; 
 int /*<<< orphan*/  tda10071_ops ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct tda10071_dev *dev;
	struct tda10071_platform_data *pdata = client->dev.platform_data;
	int ret;
	unsigned int uitmp;
	static const struct regmap_config regmap_config = {
		.reg_bits = 8,
		.val_bits = 8,
	};

	dev = FUNC7(sizeof(*dev), GFP_KERNEL);
	if (!dev) {
		ret = -ENOMEM;
		goto err;
	}

	dev->client = client;
	FUNC9(&dev->cmd_execute_mutex);
	dev->clk = pdata->clk;
	dev->i2c_wr_max = pdata->i2c_wr_max;
	dev->ts_mode = pdata->ts_mode;
	dev->spec_inv = pdata->spec_inv;
	dev->pll_multiplier = pdata->pll_multiplier;
	dev->tuner_i2c_addr = pdata->tuner_i2c_addr;
	dev->regmap = FUNC4(client, &regmap_config);
	if (FUNC0(dev->regmap)) {
		ret = FUNC1(dev->regmap);
		goto err_kfree;
	}

	/* chip ID */
	ret = FUNC10(dev->regmap, 0xff, &uitmp);
	if (ret)
		goto err_kfree;
	if (uitmp != 0x0f) {
		ret = -ENODEV;
		goto err_kfree;
	}

	/* chip type */
	ret = FUNC10(dev->regmap, 0xdd, &uitmp);
	if (ret)
		goto err_kfree;
	if (uitmp != 0x00) {
		ret = -ENODEV;
		goto err_kfree;
	}

	/* chip version */
	ret = FUNC10(dev->regmap, 0xfe, &uitmp);
	if (ret)
		goto err_kfree;
	if (uitmp != 0x01) {
		ret = -ENODEV;
		goto err_kfree;
	}

	/* create dvb_frontend */
	FUNC8(&dev->fe.ops, &tda10071_ops, sizeof(struct dvb_frontend_ops));
	dev->fe.demodulator_priv = dev;
	FUNC5(client, dev);

	/* setup callbacks */
	pdata->get_dvb_frontend = tda10071_get_dvb_frontend;

	FUNC3(&client->dev, "NXP TDA10071 successfully identified\n");
	return 0;
err_kfree:
	FUNC6(dev);
err:
	FUNC2(&client->dev, "failed=%d\n", ret);
	return ret;
}