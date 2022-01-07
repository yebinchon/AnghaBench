
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* dvb; } ;
struct tda10021_state {int reg0; TYPE_3__* config; TYPE_2__ frontend; } ;
struct dvb_frontend {struct tda10021_state* demodulator_priv; } ;
struct dtv_frontend_properties {int frequency; scalar_t__ symbol_rate; int fec_inner; scalar_t__ modulation; int inversion; } ;
typedef int s8 ;
typedef int s32 ;
struct TYPE_6__ {scalar_t__ invert; } ;
struct TYPE_4__ {int num; } ;


 int FEC_NONE ;
 int INVERSION_OFF ;
 int INVERSION_ON ;
 scalar_t__ QAM_16 ;
 int printk (char*,int ,int,int) ;
 int tda10021_readreg (struct tda10021_state*,int) ;
 scalar_t__ verbose ;

__attribute__((used)) static int tda10021_get_frontend(struct dvb_frontend *fe,
     struct dtv_frontend_properties *p)
{
 struct tda10021_state* state = fe->demodulator_priv;
 int sync;
 s8 afc = 0;

 sync = tda10021_readreg(state, 0x11);
 afc = tda10021_readreg(state, 0x19);
 if (verbose) {

  printk(sync & 2 ? "DVB: TDA10021(%d): AFC (%d) %dHz\n" :
      "DVB: TDA10021(%d): [AFC (%d) %dHz]\n",
   state->frontend.dvb->num, afc,
         -((s32)p->symbol_rate * afc) >> 10);
 }

 p->inversion = ((state->reg0 & 0x20) == 0x20) ^ (state->config->invert != 0) ? INVERSION_ON : INVERSION_OFF;
 p->modulation = ((state->reg0 >> 2) & 7) + QAM_16;

 p->fec_inner = FEC_NONE;
 p->frequency = ((p->frequency + 31250) / 62500) * 62500;

 if (sync & 2)
  p->frequency -= ((s32)p->symbol_rate * afc) >> 10;

 return 0;
}
