#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct fc2580_dev {int active; int /*<<< orphan*/  regmap; struct i2c_client* client; } ;
struct TYPE_3__ {int /*<<< orphan*/  val; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_1__* fc2580_init_reg_vals ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct fc2580_dev *dev)
{
	struct i2c_client *client = dev->client;
	int ret, i;

	FUNC1(&client->dev, "\n");

	for (i = 0; i < FUNC0(fc2580_init_reg_vals); i++) {
		ret = FUNC2(dev->regmap, fc2580_init_reg_vals[i].reg,
				fc2580_init_reg_vals[i].val);
		if (ret)
			goto err;
	}

	dev->active = true;
	return 0;
err:
	FUNC1(&client->dev, "failed=%d\n", ret);
	return ret;
}