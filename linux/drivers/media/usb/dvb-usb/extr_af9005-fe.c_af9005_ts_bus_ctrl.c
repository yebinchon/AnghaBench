
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct af9005_fe_state* demodulator_priv; } ;
struct af9005_fe_state {int d; int opened; } ;


 int af9005_led_control (int ,int ) ;

__attribute__((used)) static int af9005_ts_bus_ctrl(struct dvb_frontend *fe, int acquire)
{
 struct af9005_fe_state *state = fe->demodulator_priv;

 if (acquire) {
  state->opened++;
 } else {

  state->opened--;
  if (!state->opened)
   af9005_led_control(state->d, 0);
 }
 return 0;
}
