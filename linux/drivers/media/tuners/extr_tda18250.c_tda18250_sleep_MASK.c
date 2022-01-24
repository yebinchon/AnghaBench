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
struct tda18250_dev {scalar_t__ if_frequency; int /*<<< orphan*/  regmap; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct dvb_frontend {struct i2c_client* tuner_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  R0C_AGC11 ; 
 int /*<<< orphan*/  TDA18250_POWER_STANDBY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct tda18250_dev* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe)
{
	struct i2c_client *client = fe->tuner_priv;
	struct tda18250_dev *dev = FUNC1(client);
	int ret;

	FUNC0(&client->dev, "\n");

	/* power down LNA */
	ret = FUNC2(dev->regmap, R0C_AGC11, 0x80, 0x00);
	if (ret)
		return ret;

	/* set if freq to 0 in order to make sure it's set after wake up */
	dev->if_frequency = 0;

	ret = FUNC3(fe, TDA18250_POWER_STANDBY);
	return ret;
}