
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zl10036_state {int dummy; } ;
struct TYPE_2__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_1__ ops; struct zl10036_state* tuner_priv; } ;


 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;
 int zl10036_init_regs (struct zl10036_state*) ;
 int zl10036_read_status_reg (struct zl10036_state*) ;

__attribute__((used)) static int zl10036_init(struct dvb_frontend *fe)
{
 struct zl10036_state *state = fe->tuner_priv;
 int ret = 0;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);

 ret = zl10036_read_status_reg(state);
 if (ret < 0)
  return ret;


 ret = zl10036_init_regs(state);

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 return ret;
}
