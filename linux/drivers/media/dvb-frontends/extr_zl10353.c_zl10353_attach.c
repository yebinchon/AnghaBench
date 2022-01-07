
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct zl10353_state* demodulator_priv; int ops; } ;
struct zl10353_state {struct dvb_frontend frontend; int config; struct i2c_adapter* i2c; } ;
struct zl10353_config {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int CHIP_ID ;
 int GFP_KERNEL ;
 int ID_CE6230 ;
 int ID_CE6231 ;
 int ID_ZL10353 ;
 int kfree (struct zl10353_state*) ;
 struct zl10353_state* kzalloc (int,int ) ;
 int memcpy (int *,struct zl10353_config const*,int) ;
 struct zl10353_config const zl10353_ops ;
 int zl10353_read_register (struct zl10353_state*,int ) ;

struct dvb_frontend *zl10353_attach(const struct zl10353_config *config,
        struct i2c_adapter *i2c)
{
 struct zl10353_state *state = ((void*)0);
 int id;


 state = kzalloc(sizeof(struct zl10353_state), GFP_KERNEL);
 if (state == ((void*)0))
  goto error;


 state->i2c = i2c;
 memcpy(&state->config, config, sizeof(struct zl10353_config));


 id = zl10353_read_register(state, CHIP_ID);
 if ((id != ID_ZL10353) && (id != ID_CE6230) && (id != ID_CE6231))
  goto error;


 memcpy(&state->frontend.ops, &zl10353_ops, sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;

 return &state->frontend;
error:
 kfree(state);
 return ((void*)0);
}
