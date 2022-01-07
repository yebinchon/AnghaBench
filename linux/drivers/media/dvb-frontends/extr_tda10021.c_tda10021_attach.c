
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tda1002x_config {int demod_address; } ;
struct dvb_frontend {struct tda10021_state* demodulator_priv; int ops; } ;
struct tda10021_state {int pwm; struct dvb_frontend frontend; struct tda1002x_config const* config; int reg0; struct i2c_adapter* i2c; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (struct tda10021_state*) ;
 struct tda10021_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int printk (char*,int ,int) ;
 int * tda10021_inittab ;
 int tda10021_ops ;
 int tda10021_readreg (struct tda10021_state*,int) ;

struct dvb_frontend* tda10021_attach(const struct tda1002x_config* config,
         struct i2c_adapter* i2c,
         u8 pwm)
{
 struct tda10021_state* state = ((void*)0);
 u8 id;


 state = kzalloc(sizeof(struct tda10021_state), GFP_KERNEL);
 if (state == ((void*)0)) goto error;


 state->config = config;
 state->i2c = i2c;
 state->pwm = pwm;
 state->reg0 = tda10021_inittab[0];


 id = tda10021_readreg(state, 0x1a);
 if ((id & 0xf0) != 0x70) goto error;


 if (id == 0x7d)
  goto error;

 printk("TDA10021: i2c-addr = 0x%02x, id = 0x%02x\n",
        state->config->demod_address, id);


 memcpy(&state->frontend.ops, &tda10021_ops, sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;
 return &state->frontend;

error:
 kfree(state);
 return ((void*)0);
}
