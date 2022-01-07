
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttusbdecfe_state {int voltage; } ;
struct dvb_frontend {scalar_t__ demodulator_priv; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;


 int EINVAL ;



__attribute__((used)) static int ttusbdecfe_dvbs_set_voltage(struct dvb_frontend *fe,
           enum fe_sec_voltage voltage)
{
 struct ttusbdecfe_state* state = (struct ttusbdecfe_state*) fe->demodulator_priv;

 switch (voltage) {
 case 129:
  state->voltage = 13;
  break;
 case 128:
  state->voltage = 18;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
