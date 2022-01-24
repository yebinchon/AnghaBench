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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct fc2580_dev {int active; int /*<<< orphan*/  regmap; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct fc2580_dev *dev)
{
	struct i2c_client *client = dev->client;
	int ret;

	FUNC0(&client->dev, "\n");

	dev->active = false;

	ret = FUNC1(dev->regmap, 0x02, 0x0a);
	if (ret)
		goto err;
	return 0;
err:
	FUNC0(&client->dev, "failed=%d\n", ret);
	return ret;
}