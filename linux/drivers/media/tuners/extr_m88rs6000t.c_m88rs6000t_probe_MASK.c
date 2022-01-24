#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct regmap_config {int reg_bits; int val_bits; } ;
struct m88rs6000t_reg_val {int member_0; int member_1; int reg; int val; } ;
struct m88rs6000t_dev {struct i2c_client* client; int /*<<< orphan*/  regmap; int /*<<< orphan*/  cfg; } ;
struct m88rs6000t_config {struct dvb_frontend* fe; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_6__ {struct m88rs6000t_config* platform_data; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  tuner_ops; } ;
struct dvb_frontend {TYPE_1__ ops; struct m88rs6000t_dev* tuner_priv; } ;

/* Variables and functions */
 int FUNC0 (struct m88rs6000t_reg_val const*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct regmap_config const*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct m88rs6000t_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct m88rs6000t_dev*) ; 
 struct m88rs6000t_dev* FUNC9 (int,int /*<<< orphan*/ ) ; 
 struct m88rs6000t_config m88rs6000t_tuner_ops ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct m88rs6000t_config*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
		const struct i2c_device_id *id)
{
	struct m88rs6000t_config *cfg = client->dev.platform_data;
	struct dvb_frontend *fe = cfg->fe;
	struct m88rs6000t_dev *dev;
	int ret, i;
	unsigned int utmp;
	static const struct regmap_config regmap_config = {
		.reg_bits = 8,
		.val_bits = 8,
	};
	static const struct m88rs6000t_reg_val reg_vals[] = {
		{0x10, 0xfb},
		{0x24, 0x38},
		{0x11, 0x0a},
		{0x12, 0x00},
		{0x2b, 0x1c},
		{0x44, 0x48},
		{0x54, 0x24},
		{0x55, 0x06},
		{0x59, 0x00},
		{0x5b, 0x4c},
		{0x60, 0x8b},
		{0x61, 0xf4},
		{0x65, 0x07},
		{0x6d, 0x6f},
		{0x6e, 0x31},
		{0x3c, 0xf3},
		{0x37, 0x0f},
		{0x48, 0x28},
		{0x49, 0xd8},
		{0x70, 0x66},
		{0x71, 0xCF},
		{0x72, 0x81},
		{0x73, 0xA7},
		{0x74, 0x4F},
		{0x75, 0xFC},
	};

	dev = FUNC9(sizeof(*dev), GFP_KERNEL);
	if (!dev) {
		ret = -ENOMEM;
		FUNC4(&client->dev, "kzalloc() failed\n");
		goto err;
	}

	FUNC10(&dev->cfg, cfg, sizeof(struct m88rs6000t_config));
	dev->client = client;
	dev->regmap = FUNC6(client, &regmap_config);
	if (FUNC1(dev->regmap)) {
		ret = FUNC2(dev->regmap);
		goto err;
	}

	ret = FUNC12(dev->regmap, 0x11, 0x08, 0x08);
	if (ret)
		goto err;
	FUNC14(5000, 50000);
	ret = FUNC12(dev->regmap, 0x10, 0x01, 0x01);
	if (ret)
		goto err;
	FUNC14(10000, 50000);
	ret = FUNC13(dev->regmap, 0x07, 0x7d);
	if (ret)
		goto err;
	ret = FUNC13(dev->regmap, 0x04, 0x01);
	if (ret)
		goto err;

	/* check tuner chip id */
	ret = FUNC11(dev->regmap, 0x01, &utmp);
	if (ret)
		goto err;
	FUNC5(&dev->client->dev, "chip_id=%02x\n", utmp);
	if (utmp != 0x64) {
		ret = -ENODEV;
		goto err;
	}

	/* tuner init. */
	ret = FUNC13(dev->regmap, 0x05, 0x40);
	if (ret)
		goto err;
	ret = FUNC13(dev->regmap, 0x11, 0x08);
	if (ret)
		goto err;
	ret = FUNC13(dev->regmap, 0x15, 0x6c);
	if (ret)
		goto err;
	ret = FUNC13(dev->regmap, 0x17, 0xc1);
	if (ret)
		goto err;
	ret = FUNC13(dev->regmap, 0x17, 0x81);
	if (ret)
		goto err;
	FUNC14(10000, 50000);
	ret = FUNC13(dev->regmap, 0x05, 0x00);
	if (ret)
		goto err;
	ret = FUNC13(dev->regmap, 0x11, 0x0a);
	if (ret)
		goto err;

	for (i = 0; i < FUNC0(reg_vals); i++) {
		ret = FUNC13(dev->regmap,
				reg_vals[i].reg, reg_vals[i].val);
		if (ret)
			goto err;
	}

	FUNC5(&dev->client->dev, "Montage M88RS6000 internal tuner successfully identified\n");

	fe->tuner_priv = dev;
	FUNC10(&fe->ops.tuner_ops, &m88rs6000t_tuner_ops,
			sizeof(struct dvb_tuner_ops));
	FUNC7(client, dev);
	return 0;
err:
	FUNC3(&client->dev, "failed=%d\n", ret);
	FUNC8(dev);
	return ret;
}