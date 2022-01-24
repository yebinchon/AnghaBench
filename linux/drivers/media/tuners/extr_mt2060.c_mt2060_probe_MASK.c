#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_8__ {int /*<<< orphan*/  clock_out; int /*<<< orphan*/  i2c_address; } ;
struct mt2060_priv {int if1_freq; int sleep; scalar_t__ i2c_max_regs; struct i2c_client* client; int /*<<< orphan*/  i2c; TYPE_1__ config; TYPE_1__* cfg; } ;
struct mt2060_platform_data {int if1; scalar_t__ i2c_write_max; int /*<<< orphan*/  clock_out; struct dvb_frontend* dvb_frontend; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_11__ {struct mt2060_platform_data* platform_data; } ;
struct i2c_client {TYPE_4__ dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
struct TYPE_10__ {int /*<<< orphan*/ * release; } ;
struct TYPE_9__ {TYPE_3__ tuner_ops; } ;
struct dvb_frontend {struct mt2060_priv* tuner_priv; TYPE_2__ ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PART_REV ; 
 int /*<<< orphan*/  REG_MISC_CTRL ; 
 int /*<<< orphan*/  REG_PART_REV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*) ; 
 struct mt2060_priv* FUNC3 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct mt2060_priv*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mt2060_priv*) ; 
 int FUNC7 (struct mt2060_priv*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  mt2060_tuner_ops ; 
 int FUNC8 (struct mt2060_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct mt2060_platform_data *pdata = client->dev.platform_data;
	struct dvb_frontend *fe;
	struct mt2060_priv *dev;
	int ret;
	u8 chip_id;

	FUNC0(&client->dev, "\n");

	if (!pdata) {
		FUNC1(&client->dev, "Cannot proceed without platform data\n");
		ret = -EINVAL;
		goto err;
	}

	dev = FUNC3(&client->dev, sizeof(*dev), GFP_KERNEL);
	if (!dev) {
		ret = -ENOMEM;
		goto err;
	}

	fe = pdata->dvb_frontend;
	dev->config.i2c_address = client->addr;
	dev->config.clock_out = pdata->clock_out;
	dev->cfg = &dev->config;
	dev->i2c = client->adapter;
	dev->if1_freq = pdata->if1 ? pdata->if1 : 1220;
	dev->client = client;
	dev->i2c_max_regs = pdata->i2c_write_max ? pdata->i2c_write_max - 1 : ~0;
	dev->sleep = true;

	ret = FUNC7(dev, REG_PART_REV, &chip_id);
	if (ret) {
		ret = -ENODEV;
		goto err;
	}

	FUNC0(&client->dev, "chip id=%02x\n", chip_id);

	if (chip_id != PART_REV) {
		ret = -ENODEV;
		goto err;
	}

	/* Power on, calibrate, sleep */
	ret = FUNC8(dev, REG_MISC_CTRL, 0x20);
	if (ret)
		goto err;
	FUNC6(dev);
	ret = FUNC8(dev, REG_MISC_CTRL, 0xe8);
	if (ret)
		goto err;

	FUNC2(&client->dev, "Microtune MT2060 successfully identified\n");
	FUNC5(&fe->ops.tuner_ops, &mt2060_tuner_ops, sizeof(fe->ops.tuner_ops));
	fe->ops.tuner_ops.release = NULL;
	fe->tuner_priv = dev;
	FUNC4(client, dev);

	return 0;
err:
	FUNC0(&client->dev, "failed=%d\n", ret);
	return ret;
}