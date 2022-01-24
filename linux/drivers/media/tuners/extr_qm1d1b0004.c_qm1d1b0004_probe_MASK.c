#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qm1d1b0004_state {struct i2c_client* i2c; } ;
struct qm1d1b0004_config {struct dvb_frontend* fe; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {struct qm1d1b0004_config* platform_data; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  tuner_ops; } ;
struct dvb_frontend {struct qm1d1b0004_state* tuner_priv; TYPE_1__ ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC2 (struct qm1d1b0004_state*) ; 
 struct qm1d1b0004_state* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  qm1d1b0004_ops ; 
 int FUNC5 (struct dvb_frontend*,struct qm1d1b0004_config*) ; 

__attribute__((used)) static int
FUNC6(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct dvb_frontend *fe;
	struct qm1d1b0004_config *cfg;
	struct qm1d1b0004_state *state;
	int ret;

	cfg = client->dev.platform_data;
	fe = cfg->fe;
	FUNC1(client, fe);

	fe->tuner_priv = FUNC3(sizeof(struct qm1d1b0004_state), GFP_KERNEL);
	if (!fe->tuner_priv) {
		ret = -ENOMEM;
		goto err_mem;
	}

	FUNC4(&fe->ops.tuner_ops, &qm1d1b0004_ops, sizeof(fe->ops.tuner_ops));

	state = fe->tuner_priv;
	state->i2c = client;
	ret = FUNC5(fe, cfg);
	if (ret != 0)
		goto err_priv;

	FUNC0(&client->dev, "Sharp QM1D1B0004 attached.\n");
	return 0;

err_priv:
	FUNC2(fe->tuner_priv);
err_mem:
	fe->tuner_priv = NULL;
	return ret;
}