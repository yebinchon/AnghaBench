
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int f_LO2_Step; int f_out; int f_out_bw; } ;
struct mt2063_state {int frequency; TYPE_1__ AS_Data; int init; } ;
struct dtv_frontend_properties {int bandwidth_hz; int delivery_system; int frequency; } ;
struct dvb_frontend {struct mt2063_state* tuner_priv; struct dtv_frontend_properties dtv_property_cache; } ;
typedef int s32 ;


 int EINVAL ;
 int MT2063_CABLE_QAM ;
 int MT2063_OFFAIR_COFDM ;
 int MT2063_SetReceiverMode (struct mt2063_state*,int) ;
 int MT2063_Tune (struct mt2063_state*,int) ;



 int dprintk (int,char*,...) ;
 int mt2063_init (struct dvb_frontend*) ;

__attribute__((used)) static int mt2063_set_params(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 struct mt2063_state *state = fe->tuner_priv;
 int status;
 s32 pict_car;
 s32 pict2chanb_vsb;
 s32 ch_bw;
 s32 if_mid;
 s32 rcvr_mode;

 if (!state->init) {
  status = mt2063_init(fe);
  if (status < 0)
   return status;
 }

 dprintk(2, "\n");

 if (c->bandwidth_hz == 0)
  return -EINVAL;
 if (c->bandwidth_hz <= 6000000)
  ch_bw = 6000000;
 else if (c->bandwidth_hz <= 7000000)
  ch_bw = 7000000;
 else
  ch_bw = 8000000;

 switch (c->delivery_system) {
 case 128:
  rcvr_mode = MT2063_OFFAIR_COFDM;
  pict_car = 36125000;
  pict2chanb_vsb = -(ch_bw / 2);
  break;
 case 130:
 case 129:
  rcvr_mode = MT2063_CABLE_QAM;
  pict_car = 36125000;
  pict2chanb_vsb = -(ch_bw / 2);
  break;
 default:
  return -EINVAL;
 }
 if_mid = pict_car - (pict2chanb_vsb + (ch_bw / 2));

 state->AS_Data.f_LO2_Step = 125000;
 state->AS_Data.f_out = if_mid;
 state->AS_Data.f_out_bw = ch_bw + 750000;
 status = MT2063_SetReceiverMode(state, rcvr_mode);
 if (status < 0)
  return status;

 dprintk(1, "Tuning to frequency: %d, bandwidth %d, foffset %d\n",
  c->frequency, ch_bw, pict2chanb_vsb);

 status = MT2063_Tune(state, (c->frequency + (pict2chanb_vsb + (ch_bw / 2))));

 if (status < 0)
  return status;

 state->frequency = c->frequency;
 return 0;
}
