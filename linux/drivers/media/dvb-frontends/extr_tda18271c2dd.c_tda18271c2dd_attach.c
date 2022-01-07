
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tda_state {struct i2c_adapter* i2c; int adr; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int tuner_ops; } ;
struct dvb_frontend {TYPE_1__ ops; struct tda_state* tuner_priv; } ;


 int GFP_KERNEL ;
 int InitCal (struct tda_state*) ;
 struct tda_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int reset (struct tda_state*) ;
 int tuner_ops ;

struct dvb_frontend *tda18271c2dd_attach(struct dvb_frontend *fe,
      struct i2c_adapter *i2c, u8 adr)
{
 struct tda_state *state;

 state = kzalloc(sizeof(struct tda_state), GFP_KERNEL);
 if (!state)
  return ((void*)0);

 fe->tuner_priv = state;
 state->adr = adr;
 state->i2c = i2c;
 memcpy(&fe->ops.tuner_ops, &tuner_ops, sizeof(struct dvb_tuner_ops));
 reset(state);
 InitCal(state);

 return fe;
}
