
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qm1d1b0004_state {struct i2c_client* i2c; } ;
struct qm1d1b0004_config {struct dvb_frontend* fe; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {struct qm1d1b0004_config* platform_data; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct TYPE_3__ {int tuner_ops; } ;
struct dvb_frontend {struct qm1d1b0004_state* tuner_priv; TYPE_1__ ops; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_info (TYPE_2__*,char*) ;
 int i2c_set_clientdata (struct i2c_client*,struct dvb_frontend*) ;
 int kfree (struct qm1d1b0004_state*) ;
 struct qm1d1b0004_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int qm1d1b0004_ops ;
 int qm1d1b0004_set_config (struct dvb_frontend*,struct qm1d1b0004_config*) ;

__attribute__((used)) static int
qm1d1b0004_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct dvb_frontend *fe;
 struct qm1d1b0004_config *cfg;
 struct qm1d1b0004_state *state;
 int ret;

 cfg = client->dev.platform_data;
 fe = cfg->fe;
 i2c_set_clientdata(client, fe);

 fe->tuner_priv = kzalloc(sizeof(struct qm1d1b0004_state), GFP_KERNEL);
 if (!fe->tuner_priv) {
  ret = -ENOMEM;
  goto err_mem;
 }

 memcpy(&fe->ops.tuner_ops, &qm1d1b0004_ops, sizeof(fe->ops.tuner_ops));

 state = fe->tuner_priv;
 state->i2c = client;
 ret = qm1d1b0004_set_config(fe, cfg);
 if (ret != 0)
  goto err_priv;

 dev_info(&client->dev, "Sharp QM1D1B0004 attached.\n");
 return 0;

err_priv:
 kfree(fe->tuner_priv);
err_mem:
 fe->tuner_priv = ((void*)0);
 return ret;
}
