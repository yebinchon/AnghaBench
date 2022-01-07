
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttusbdecfe_state {int hi_band; } ;
struct dvb_frontend {scalar_t__ demodulator_priv; } ;
typedef enum fe_sec_tone_mode { ____Placeholder_fe_sec_tone_mode } fe_sec_tone_mode ;


 int SEC_TONE_ON ;

__attribute__((used)) static int ttusbdecfe_dvbs_set_tone(struct dvb_frontend *fe,
        enum fe_sec_tone_mode tone)
{
 struct ttusbdecfe_state* state = (struct ttusbdecfe_state*) fe->demodulator_priv;

 state->hi_band = (SEC_TONE_ON == tone);

 return 0;
}
