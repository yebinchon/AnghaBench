
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dst_state* demodulator_priv; } ;
struct dst_state {int voltage; scalar_t__ dst_type; int diseq_flags; int* tx_tuna; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;


 int ATTEMPT_TUNE ;
 scalar_t__ DST_TYPE_IS_SAT ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int HAS_LOCK ;
 int HAS_POWER ;



 int dst_tone_power_cmd (struct dst_state*) ;

__attribute__((used)) static int dst_set_voltage(struct dvb_frontend *fe, enum fe_sec_voltage voltage)
{
 int need_cmd, retval = 0;
 struct dst_state *state = fe->demodulator_priv;

 state->voltage = voltage;
 if (state->dst_type != DST_TYPE_IS_SAT)
  return -EOPNOTSUPP;

 need_cmd = 0;

 switch (voltage) {
 case 130:
 case 129:
  if ((state->diseq_flags & HAS_POWER) == 0)
   need_cmd = 1;
  state->diseq_flags |= HAS_POWER;
  state->tx_tuna[4] = 0x01;
  break;
 case 128:
  need_cmd = 1;
  state->diseq_flags &= ~(HAS_POWER | HAS_LOCK | ATTEMPT_TUNE);
  state->tx_tuna[4] = 0x00;
  break;
 default:
  return -EINVAL;
 }

 if (need_cmd)
  retval = dst_tone_power_cmd(state);

 return retval;
}
