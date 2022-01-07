
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ves1820_state {int reg0; TYPE_1__* config; } ;
struct dvb_frontend {struct ves1820_state* demodulator_priv; } ;
struct dtv_frontend_properties {int frequency; scalar_t__ symbol_rate; int fec_inner; scalar_t__ modulation; void* inversion; } ;
typedef int s8 ;
typedef int s32 ;
struct TYPE_2__ {int invert; } ;


 int FEC_NONE ;
 void* INVERSION_OFF ;
 void* INVERSION_ON ;
 scalar_t__ QAM_16 ;
 int printk (char*,int,int) ;
 scalar_t__ verbose ;
 int ves1820_readreg (struct ves1820_state*,int) ;

__attribute__((used)) static int ves1820_get_frontend(struct dvb_frontend *fe,
    struct dtv_frontend_properties *p)
{
 struct ves1820_state* state = fe->demodulator_priv;
 int sync;
 s8 afc = 0;

 sync = ves1820_readreg(state, 0x11);
 afc = ves1820_readreg(state, 0x19);
 if (verbose) {

  printk(sync & 2 ? "ves1820: AFC (%d) %dHz\n" :
   "ves1820: [AFC (%d) %dHz]\n", afc, -((s32) p->symbol_rate * afc) >> 10);
 }

 if (!state->config->invert) {
  p->inversion = (state->reg0 & 0x20) ? INVERSION_ON : INVERSION_OFF;
 } else {
  p->inversion = (!(state->reg0 & 0x20)) ? INVERSION_ON : INVERSION_OFF;
 }

 p->modulation = ((state->reg0 >> 2) & 7) + QAM_16;

 p->fec_inner = FEC_NONE;

 p->frequency = ((p->frequency + 31250) / 62500) * 62500;
 if (sync & 2)
  p->frequency -= ((s32) p->symbol_rate * afc) >> 10;

 return 0;
}
