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
struct si2157_dev {int /*<<< orphan*/  i2c_mutex; } ;
struct si2157_cmd {int wlen; int* args; int rlen; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int ETIMEDOUT ; 
 int TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct si2157_dev* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int*,int) ; 
 int FUNC3 (struct i2c_client*,int*,int) ; 
 unsigned long jiffies ; 
 int FUNC4 (unsigned long) ; 
 unsigned long FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client, struct si2157_cmd *cmd)
{
	struct si2157_dev *dev = FUNC1(client);
	int ret;
	unsigned long timeout;

	FUNC6(&dev->i2c_mutex);

	if (cmd->wlen) {
		/* write cmd and args for firmware */
		ret = FUNC3(client, cmd->args, cmd->wlen);
		if (ret < 0) {
			goto err_mutex_unlock;
		} else if (ret != cmd->wlen) {
			ret = -EREMOTEIO;
			goto err_mutex_unlock;
		}
	}

	if (cmd->rlen) {
		/* wait cmd execution terminate */
		#define TIMEOUT 80
		timeout = jiffies + FUNC5(TIMEOUT);
		while (!FUNC8(jiffies, timeout)) {
			ret = FUNC2(client, cmd->args, cmd->rlen);
			if (ret < 0) {
				goto err_mutex_unlock;
			} else if (ret != cmd->rlen) {
				ret = -EREMOTEIO;
				goto err_mutex_unlock;
			}

			/* firmware ready? */
			if ((cmd->args[0] >> 7) & 0x01)
				break;
		}

		FUNC0(&client->dev, "cmd execution took %d ms\n",
				FUNC4(jiffies) -
				(FUNC4(timeout) - TIMEOUT));

		if (!((cmd->args[0] >> 7) & 0x01)) {
			ret = -ETIMEDOUT;
			goto err_mutex_unlock;
		}
	}

	FUNC7(&dev->i2c_mutex);
	return 0;

err_mutex_unlock:
	FUNC7(&dev->i2c_mutex);
	FUNC0(&client->dev, "failed=%d\n", ret);
	return ret;
}