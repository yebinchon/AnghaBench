
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ves1x93_state {scalar_t__ inversion; scalar_t__ frequency; } ;
struct dvb_frontend {struct ves1x93_state* demodulator_priv; } ;
struct dtv_frontend_properties {int symbol_rate; int fec_inner; int inversion; scalar_t__ frequency; } ;


 scalar_t__ INVERSION_AUTO ;
 int INVERSION_OFF ;
 int INVERSION_ON ;
 int ves1x93_get_fec (struct ves1x93_state*) ;
 int ves1x93_readreg (struct ves1x93_state*,int) ;

__attribute__((used)) static int ves1x93_get_frontend(struct dvb_frontend *fe,
    struct dtv_frontend_properties *p)
{
 struct ves1x93_state* state = fe->demodulator_priv;
 int afc;

 afc = ((int)((char)(ves1x93_readreg (state, 0x0a) << 1)))/2;
 afc = (afc * (int)(p->symbol_rate/1000/8))/16;

 p->frequency = state->frequency - afc;





 if (state->inversion == INVERSION_AUTO)
  p->inversion = (ves1x93_readreg (state, 0x0f) & 2) ?
    INVERSION_OFF : INVERSION_ON;
 p->fec_inner = ves1x93_get_fec(state);


 return 0;
}
