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
typedef  unsigned int u8 ;
struct tda18250_dev {int /*<<< orphan*/  regmap; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct dvb_frontend {struct i2c_client* tuner_priv; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  R08_IRQ1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int,int,char*) ; 
 struct tda18250_dev* FUNC1 (struct i2c_client*) ; 
 unsigned long jiffies ; 
 int FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct dvb_frontend *fe,
		int maxwait, int step, u8 irq)
{
	struct i2c_client *client = fe->tuner_priv;
	struct tda18250_dev *dev = FUNC1(client);
	int ret;
	unsigned long timeout;
	bool triggered;
	unsigned int utmp;

	triggered = false;
	timeout = jiffies + FUNC3(maxwait);
	while (!FUNC6(jiffies, timeout)) {
		// check for the IRQ
		ret = FUNC5(dev->regmap, R08_IRQ1, &utmp);
		if (ret)
			goto err;
		if ((utmp & irq) == irq) {
			triggered = true;
			break;
		}
		FUNC4(step);
	}

	FUNC0(&client->dev, "waited IRQ (0x%02x) %d ms, triggered: %s", irq,
			FUNC2(jiffies) -
			(FUNC2(timeout) - maxwait),
			triggered ? "true" : "false");

	if (!triggered)
		return -ETIMEDOUT;

	return 0;
err:
	return ret;
}