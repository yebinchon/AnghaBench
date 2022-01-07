
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dst_state* demodulator_priv; } ;
struct dst_state {scalar_t__ dst_type; int minicmd; int* tx_tuna; } ;
typedef enum fe_sec_mini_cmd { ____Placeholder_fe_sec_mini_cmd } fe_sec_mini_cmd ;


 scalar_t__ DST_TYPE_IS_SAT ;
 int EOPNOTSUPP ;


 int dst_tone_power_cmd (struct dst_state*) ;

__attribute__((used)) static int dst_send_burst(struct dvb_frontend *fe, enum fe_sec_mini_cmd minicmd)
{
 struct dst_state *state = fe->demodulator_priv;

 if (state->dst_type != DST_TYPE_IS_SAT)
  return -EOPNOTSUPP;
 state->minicmd = minicmd;
 switch (minicmd) {
 case 129:
  state->tx_tuna[3] = 0x02;
  break;
 case 128:
  state->tx_tuna[3] = 0xff;
  break;
 }
 return dst_tone_power_cmd(state);
}
