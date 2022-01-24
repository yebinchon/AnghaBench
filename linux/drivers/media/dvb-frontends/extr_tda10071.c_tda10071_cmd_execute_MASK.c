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
struct tda10071_dev {int /*<<< orphan*/  cmd_execute_mutex; int /*<<< orphan*/  regmap; int /*<<< orphan*/  warm; struct i2c_client* client; } ;
struct tda10071_cmd {int /*<<< orphan*/  len; int /*<<< orphan*/  args; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EFAULT ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct tda10071_dev *dev,
	struct tda10071_cmd *cmd)
{
	struct i2c_client *client = dev->client;
	int ret, i;
	unsigned int uitmp;

	if (!dev->warm) {
		ret = -EFAULT;
		goto error;
	}

	FUNC1(&dev->cmd_execute_mutex);

	/* write cmd and args for firmware */
	ret = FUNC3(dev->regmap, 0x00, cmd->args, cmd->len);
	if (ret)
		goto error_mutex_unlock;

	/* start cmd execution */
	ret = FUNC5(dev->regmap, 0x1f, 1);
	if (ret)
		goto error_mutex_unlock;

	/* wait cmd execution terminate */
	for (i = 1000, uitmp = 1; i && uitmp; i--) {
		ret = FUNC4(dev->regmap, 0x1f, &uitmp);
		if (ret)
			goto error_mutex_unlock;

		FUNC6(200, 5000);
	}

	FUNC2(&dev->cmd_execute_mutex);
	FUNC0(&client->dev, "loop=%d\n", i);

	if (i == 0) {
		ret = -ETIMEDOUT;
		goto error;
	}

	return ret;
error_mutex_unlock:
	FUNC2(&dev->cmd_execute_mutex);
error:
	FUNC0(&client->dev, "failed=%d\n", ret);
	return ret;
}