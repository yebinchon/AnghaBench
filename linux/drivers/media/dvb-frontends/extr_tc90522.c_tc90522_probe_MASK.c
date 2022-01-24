#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct i2c_adapter* tuner_i2c; TYPE_1__* fe; } ;
struct TYPE_7__ {TYPE_5__* parent; } ;
struct i2c_adapter {int /*<<< orphan*/  name; TYPE_2__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; } ;
struct TYPE_6__ {struct tc90522_state* demodulator_priv; TYPE_3__ ops; } ;
struct tc90522_state {TYPE_3__ cfg; struct i2c_adapter tuner_i2c; TYPE_1__ fe; struct i2c_client* i2c_client; } ;
typedef  struct tc90522_config {struct i2c_adapter* tuner_i2c; TYPE_1__* fe; } const tc90522_config ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_9__ {struct tc90522_config* platform_data; } ;
struct i2c_client {TYPE_5__ dev; } ;
struct dvb_frontend_ops {struct i2c_adapter* tuner_i2c; TYPE_1__* fe; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*) ; 
 int FUNC1 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,struct tc90522_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct tc90522_state*) ; 
 struct tc90522_state* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct tc90522_config const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 struct tc90522_config tc90522_ops_sat ; 
 struct tc90522_config tc90522_ops_ter ; 
 int /*<<< orphan*/  tc90522_tuner_i2c_algo ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct tc90522_state *state;
	struct tc90522_config *cfg;
	const struct dvb_frontend_ops *ops;
	struct i2c_adapter *adap;
	int ret;

	state = FUNC5(sizeof(*state), GFP_KERNEL);
	if (!state)
		return -ENOMEM;
	state->i2c_client = client;

	cfg = client->dev.platform_data;
	FUNC6(&state->cfg, cfg, sizeof(state->cfg));
	cfg->fe = state->cfg.fe = &state->fe;
	ops =  id->driver_data == 0 ? &tc90522_ops_sat : &tc90522_ops_ter;
	FUNC6(&state->fe.ops, ops, sizeof(*ops));
	state->fe.demodulator_priv = state;

	adap = &state->tuner_i2c;
	adap->owner = THIS_MODULE;
	adap->algo = &tc90522_tuner_i2c_algo;
	adap->dev.parent = &client->dev;
	FUNC7(adap->name, "tc90522_sub", sizeof(adap->name));
	FUNC2(adap, state);
	ret = FUNC1(adap);
	if (ret < 0)
		goto free_state;
	cfg->tuner_i2c = state->cfg.tuner_i2c = adap;

	FUNC3(client, &state->cfg);
	FUNC0(&client->dev, "Toshiba TC90522 attached.\n");
	return 0;
free_state:
	FUNC4(state);
	return ret;
}