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
struct si2157_dev {int active; int /*<<< orphan*/  stat_work; } ;
struct si2157_cmd {int wlen; int rlen; int /*<<< orphan*/  args; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct dvb_frontend {struct i2c_client* tuner_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct si2157_dev* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (struct i2c_client*,struct si2157_cmd*) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe)
{
	struct i2c_client *client = fe->tuner_priv;
	struct si2157_dev *dev = FUNC2(client);
	int ret;
	struct si2157_cmd cmd;

	FUNC1(&client->dev, "\n");

	dev->active = false;

	/* stop statistics polling */
	FUNC0(&dev->stat_work);

	/* standby */
	FUNC3(cmd.args, "\x16\x00", 2);
	cmd.wlen = 2;
	cmd.rlen = 1;
	ret = FUNC4(client, &cmd);
	if (ret)
		goto err;

	return 0;
err:
	FUNC1(&client->dev, "failed=%d\n", ret);
	return ret;
}