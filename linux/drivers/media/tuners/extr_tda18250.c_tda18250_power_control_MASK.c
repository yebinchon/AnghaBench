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
struct tda18250_dev {int /*<<< orphan*/  regmap; int /*<<< orphan*/  loopthrough; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct dvb_frontend {struct i2c_client* tuner_priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  R06_POWER2 ; 
 int /*<<< orphan*/  R0D_AGC12 ; 
 int /*<<< orphan*/  R10_LT1 ; 
 int /*<<< orphan*/  R25_REF ; 
#define  TDA18250_POWER_NORMAL 129 
#define  TDA18250_POWER_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 struct tda18250_dev* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe,
		unsigned int power_state)
{
	struct i2c_client *client = fe->tuner_priv;
	struct tda18250_dev *dev = FUNC1(client);
	int ret;
	unsigned int utmp;

	FUNC0(&client->dev, "power state: %d", power_state);

	switch (power_state) {
	case TDA18250_POWER_NORMAL:
		ret = FUNC3(dev->regmap, R06_POWER2, 0x07, 0x00);
		if (ret)
			goto err;
		ret = FUNC3(dev->regmap, R25_REF, 0xc0, 0xc0);
		if (ret)
			goto err;
		break;
	case TDA18250_POWER_STANDBY:
		if (dev->loopthrough) {
			ret = FUNC3(dev->regmap,
					R25_REF, 0xc0, 0x80);
			if (ret)
				goto err;
			ret = FUNC3(dev->regmap,
					R06_POWER2, 0x07, 0x02);
			if (ret)
				goto err;
			ret = FUNC3(dev->regmap,
					R10_LT1, 0x80, 0x00);
			if (ret)
				goto err;
		} else {
			ret = FUNC3(dev->regmap,
					R25_REF, 0xc0, 0x80);
			if (ret)
				goto err;
			ret = FUNC3(dev->regmap,
					R06_POWER2, 0x07, 0x01);
			if (ret)
				goto err;
			ret = FUNC2(dev->regmap,
					R0D_AGC12, &utmp);
			if (ret)
				goto err;
			ret = FUNC3(dev->regmap,
					R0D_AGC12, 0x03, 0x03);
			if (ret)
				goto err;
			ret = FUNC3(dev->regmap,
					R10_LT1, 0x80, 0x80);
			if (ret)
				goto err;
			ret = FUNC3(dev->regmap,
					R0D_AGC12, 0x03, utmp & 0x03);
			if (ret)
				goto err;
		}
		break;
	default:
		ret = -EINVAL;
		goto err;
	}

	return 0;
err:
	return ret;
}