
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct tda8083_state* demodulator_priv; int ops; } ;
struct tda8083_state {struct dvb_frontend frontend; struct i2c_adapter* i2c; struct tda8083_config const* config; } ;
struct tda8083_config {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (struct tda8083_state*) ;
 struct tda8083_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int tda8083_ops ;
 int tda8083_readreg (struct tda8083_state*,int) ;

struct dvb_frontend* tda8083_attach(const struct tda8083_config* config,
        struct i2c_adapter* i2c)
{
 struct tda8083_state* state = ((void*)0);


 state = kzalloc(sizeof(struct tda8083_state), GFP_KERNEL);
 if (state == ((void*)0)) goto error;


 state->config = config;
 state->i2c = i2c;


 if ((tda8083_readreg(state, 0x00)) != 0x05) goto error;


 memcpy(&state->frontend.ops, &tda8083_ops, sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;
 return &state->frontend;

error:
 kfree(state);
 return ((void*)0);
}
