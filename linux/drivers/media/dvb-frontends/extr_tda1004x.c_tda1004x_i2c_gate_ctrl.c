
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda1004x_state {int dummy; } ;
struct dvb_frontend {struct tda1004x_state* demodulator_priv; } ;


 int tda1004x_disable_tuner_i2c (struct tda1004x_state*) ;
 int tda1004x_enable_tuner_i2c (struct tda1004x_state*) ;

__attribute__((used)) static int tda1004x_i2c_gate_ctrl(struct dvb_frontend* fe, int enable)
{
 struct tda1004x_state* state = fe->demodulator_priv;

 if (enable) {
  return tda1004x_enable_tuner_i2c(state);
 } else {
  return tda1004x_disable_tuner_i2c(state);
 }
}
