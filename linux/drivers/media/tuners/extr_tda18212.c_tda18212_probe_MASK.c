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
struct tda18212_dev {struct i2c_client* client; int /*<<< orphan*/  regmap; int /*<<< orphan*/  cfg; } ;
struct tda18212_config {struct dvb_frontend* fe; } ;
struct regmap_config {int reg_bits; int val_bits; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_6__ {struct tda18212_config* platform_data; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  tuner_ops; int /*<<< orphan*/  (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_1__ ops; struct tda18212_dev* tuner_priv; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct regmap_config const*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct tda18212_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct tda18212_dev*) ; 
 struct tda18212_dev* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct tda18212_config*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC11 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct dvb_frontend*,int) ; 
 struct tda18212_config tda18212_tuner_ops ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
		const struct i2c_device_id *id)
{
	struct tda18212_config *cfg = client->dev.platform_data;
	struct dvb_frontend *fe = cfg->fe;
	struct tda18212_dev *dev;
	int ret;
	unsigned int chip_id;
	char *version;
	static const struct regmap_config regmap_config = {
		.reg_bits = 8,
		.val_bits = 8,
	};

	dev = FUNC8(sizeof(*dev), GFP_KERNEL);
	if (dev == NULL) {
		ret = -ENOMEM;
		FUNC3(&client->dev, "kzalloc() failed\n");
		goto err;
	}

	FUNC9(&dev->cfg, cfg, sizeof(struct tda18212_config));
	dev->client = client;
	dev->regmap = FUNC5(client, &regmap_config);
	if (FUNC0(dev->regmap)) {
		ret = FUNC1(dev->regmap);
		goto err;
	}

	/* check if the tuner is there */
	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 1); /* open I2C-gate */

	ret = FUNC10(dev->regmap, 0x00, &chip_id);
	FUNC2(&dev->client->dev, "chip_id=%02x\n", chip_id);

	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 0); /* close I2C-gate */

	if (ret)
		goto err;

	switch (chip_id) {
	case 0xc7:
		version = "M"; /* master */
		break;
	case 0x47:
		version = "S"; /* slave */
		break;
	default:
		ret = -ENODEV;
		goto err;
	}

	FUNC4(&dev->client->dev,
			"NXP TDA18212HN/%s successfully identified\n", version);

	fe->tuner_priv = dev;
	FUNC9(&fe->ops.tuner_ops, &tda18212_tuner_ops,
			sizeof(struct dvb_tuner_ops));
	FUNC6(client, dev);

	return 0;
err:
	FUNC2(&client->dev, "failed=%d\n", ret);
	FUNC7(dev);
	return ret;
}