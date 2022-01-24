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
struct tda10071_dev {int /*<<< orphan*/  regmap; int /*<<< orphan*/  warm; struct i2c_client* client; } ;
struct tda10071_cmd {int* args; int /*<<< orphan*/  len; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct dvb_frontend {struct tda10071_dev* demodulator_priv; } ;
struct dvb_diseqc_master_cmd {int msg_len; int /*<<< orphan*/  msg; } ;

/* Variables and functions */
 int CMD_LNB_SEND_DISEQC ; 
 int EFAULT ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC4 (struct tda10071_dev*,struct tda10071_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct dvb_frontend *fe,
	struct dvb_diseqc_master_cmd *diseqc_cmd)
{
	struct tda10071_dev *dev = fe->demodulator_priv;
	struct i2c_client *client = dev->client;
	struct tda10071_cmd cmd;
	int ret, i;
	unsigned int uitmp;

	if (!dev->warm) {
		ret = -EFAULT;
		goto error;
	}

	FUNC0(&client->dev, "msg_len=%d\n", diseqc_cmd->msg_len);

	if (diseqc_cmd->msg_len < 3 || diseqc_cmd->msg_len > 6) {
		ret = -EINVAL;
		goto error;
	}

	/* wait LNB TX */
	for (i = 500, uitmp = 0; i && !uitmp; i--) {
		ret = FUNC2(dev->regmap, 0x47, &uitmp);
		if (ret)
			goto error;
		uitmp = (uitmp >> 0) & 1;
		FUNC5(10000, 20000);
	}

	FUNC0(&client->dev, "loop=%d\n", i);

	if (i == 0) {
		ret = -ETIMEDOUT;
		goto error;
	}

	ret = FUNC3(dev->regmap, 0x47, 0x01, 0x00);
	if (ret)
		goto error;

	cmd.args[0] = CMD_LNB_SEND_DISEQC;
	cmd.args[1] = 0;
	cmd.args[2] = 0;
	cmd.args[3] = 0;
	cmd.args[4] = 2;
	cmd.args[5] = 0;
	cmd.args[6] = diseqc_cmd->msg_len;
	FUNC1(&cmd.args[7], diseqc_cmd->msg, diseqc_cmd->msg_len);
	cmd.len = 7 + diseqc_cmd->msg_len;
	ret = FUNC4(dev, &cmd);
	if (ret)
		goto error;

	return ret;
error:
	FUNC0(&client->dev, "failed=%d\n", ret);
	return ret;
}