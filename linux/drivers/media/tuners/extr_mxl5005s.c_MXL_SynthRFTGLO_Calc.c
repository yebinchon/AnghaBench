
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl5005s_state {int Mode; int RF_LO; int RF_IN; int TG_LO; scalar_t__ IF_Mode; int Chan_Bandwidth; } ;
struct dvb_frontend {struct mxl5005s_state* tuner_priv; } ;



__attribute__((used)) static void MXL_SynthRFTGLO_Calc(struct dvb_frontend *fe)
{
 struct mxl5005s_state *state = fe->tuner_priv;

 if (state->Mode == 1) {

   state->RF_LO = state->RF_IN;

   state->TG_LO = state->RF_IN - 750000;
 } else {
  if (state->IF_Mode == 0) {
   state->RF_LO = state->RF_IN - 400000;
   state->TG_LO = state->RF_IN - 1750000;
  } else {
   state->RF_LO = state->RF_IN - state->Chan_Bandwidth/2;
   state->TG_LO = state->RF_IN -
    state->Chan_Bandwidth + 500000;
  }
 }
}
