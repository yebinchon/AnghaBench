
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ves1x93_state {int frequency; int inversion; } ;
struct TYPE_3__ {int (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int ) ;TYPE_1__ tuner_ops; } ;
struct dtv_frontend_properties {int frequency; int inversion; int symbol_rate; int fec_inner; } ;
struct dvb_frontend {TYPE_2__ ops; struct ves1x93_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;


 int stub1 (struct dvb_frontend*) ;
 int stub2 (struct dvb_frontend*,int ) ;
 int ves1x93_set_fec (struct ves1x93_state*,int ) ;
 int ves1x93_set_inversion (struct ves1x93_state*,int ) ;
 int ves1x93_set_symbolrate (struct ves1x93_state*,int ) ;

__attribute__((used)) static int ves1x93_set_frontend(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 struct ves1x93_state* state = fe->demodulator_priv;

 if (fe->ops.tuner_ops.set_params) {
  fe->ops.tuner_ops.set_params(fe);
  if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
 }
 ves1x93_set_inversion (state, p->inversion);
 ves1x93_set_fec(state, p->fec_inner);
 ves1x93_set_symbolrate(state, p->symbol_rate);
 state->inversion = p->inversion;
 state->frequency = p->frequency;

 return 0;
}
