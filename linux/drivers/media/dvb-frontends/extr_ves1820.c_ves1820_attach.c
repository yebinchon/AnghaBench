
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int symbol_rate_min; int symbol_rate_max; } ;
struct TYPE_4__ {TYPE_1__ info; } ;
struct dvb_frontend {struct ves1820_state* demodulator_priv; TYPE_2__ ops; } ;
struct ves1820_state {struct dvb_frontend frontend; struct ves1820_config const* config; int pwm; struct i2c_adapter* i2c; int reg0; } ;
struct ves1820_config {int xin; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (struct ves1820_state*) ;
 struct ves1820_state* kzalloc (int,int ) ;
 int memcpy (TYPE_2__*,int *,int) ;
 int printk (char*,int ) ;
 scalar_t__ verbose ;
 int * ves1820_inittab ;
 int ves1820_ops ;
 int ves1820_readreg (struct ves1820_state*,int) ;

struct dvb_frontend* ves1820_attach(const struct ves1820_config* config,
        struct i2c_adapter* i2c,
        u8 pwm)
{
 struct ves1820_state* state = ((void*)0);


 state = kzalloc(sizeof(struct ves1820_state), GFP_KERNEL);
 if (state == ((void*)0))
  goto error;


 state->reg0 = ves1820_inittab[0];
 state->config = config;
 state->i2c = i2c;
 state->pwm = pwm;


 if ((ves1820_readreg(state, 0x1a) & 0xf0) != 0x70)
  goto error;

 if (verbose)
  printk("ves1820: pwm=0x%02x\n", state->pwm);


 memcpy(&state->frontend.ops, &ves1820_ops, sizeof(struct dvb_frontend_ops));
 state->frontend.ops.info.symbol_rate_min = (state->config->xin / 2) / 64;
 state->frontend.ops.info.symbol_rate_max = (state->config->xin / 2) / 4;
 state->frontend.demodulator_priv = state;

 return &state->frontend;

error:
 kfree(state);
 return ((void*)0);
}
