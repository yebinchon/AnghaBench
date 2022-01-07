
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {struct i2c_adapter* tuner_i2c; TYPE_1__* fe; } ;
struct TYPE_7__ {TYPE_5__* parent; } ;
struct i2c_adapter {int name; TYPE_2__ dev; int * algo; int owner; } ;
struct TYPE_6__ {struct tc90522_state* demodulator_priv; TYPE_3__ ops; } ;
struct tc90522_state {TYPE_3__ cfg; struct i2c_adapter tuner_i2c; TYPE_1__ fe; struct i2c_client* i2c_client; } ;
typedef struct tc90522_config {struct i2c_adapter* tuner_i2c; TYPE_1__* fe; } const tc90522_config ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_9__ {struct tc90522_config* platform_data; } ;
struct i2c_client {TYPE_5__ dev; } ;
struct dvb_frontend_ops {struct i2c_adapter* tuner_i2c; TYPE_1__* fe; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int dev_info (TYPE_5__*,char*) ;
 int i2c_add_adapter (struct i2c_adapter*) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct tc90522_state*) ;
 int i2c_set_clientdata (struct i2c_client*,TYPE_3__*) ;
 int kfree (struct tc90522_state*) ;
 struct tc90522_state* kzalloc (int,int ) ;
 int memcpy (TYPE_3__*,struct tc90522_config const*,int) ;
 int strscpy (int ,char*,int) ;
 struct tc90522_config tc90522_ops_sat ;
 struct tc90522_config tc90522_ops_ter ;
 int tc90522_tuner_i2c_algo ;

__attribute__((used)) static int tc90522_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct tc90522_state *state;
 struct tc90522_config *cfg;
 const struct dvb_frontend_ops *ops;
 struct i2c_adapter *adap;
 int ret;

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (!state)
  return -ENOMEM;
 state->i2c_client = client;

 cfg = client->dev.platform_data;
 memcpy(&state->cfg, cfg, sizeof(state->cfg));
 cfg->fe = state->cfg.fe = &state->fe;
 ops = id->driver_data == 0 ? &tc90522_ops_sat : &tc90522_ops_ter;
 memcpy(&state->fe.ops, ops, sizeof(*ops));
 state->fe.demodulator_priv = state;

 adap = &state->tuner_i2c;
 adap->owner = THIS_MODULE;
 adap->algo = &tc90522_tuner_i2c_algo;
 adap->dev.parent = &client->dev;
 strscpy(adap->name, "tc90522_sub", sizeof(adap->name));
 i2c_set_adapdata(adap, state);
 ret = i2c_add_adapter(adap);
 if (ret < 0)
  goto free_state;
 cfg->tuner_i2c = state->cfg.tuner_i2c = adap;

 i2c_set_clientdata(client, &state->cfg);
 dev_info(&client->dev, "Toshiba TC90522 attached.\n");
 return 0;
free_state:
 kfree(state);
 return ret;
}
