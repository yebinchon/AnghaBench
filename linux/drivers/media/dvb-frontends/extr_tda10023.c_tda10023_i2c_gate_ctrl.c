
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda10023_state {int dummy; } ;
struct dvb_frontend {struct tda10023_state* demodulator_priv; } ;


 int lock_tuner (struct tda10023_state*) ;
 int unlock_tuner (struct tda10023_state*) ;

__attribute__((used)) static int tda10023_i2c_gate_ctrl(struct dvb_frontend* fe, int enable)
{
 struct tda10023_state* state = fe->demodulator_priv;

 if (enable) {
  lock_tuner(state);
 } else {
  unlock_tuner(state);
 }
 return 0;
}
