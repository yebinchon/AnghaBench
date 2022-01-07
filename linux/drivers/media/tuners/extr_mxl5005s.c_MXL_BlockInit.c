
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mxl5005s_state {scalar_t__ Mode; int Chan_Bandwidth; int IF_Mode; int AGC_Mode; int TOP; int IF_OUT_LOAD; unsigned long IF_OUT; int DIV_OUT; unsigned long Fxtal; scalar_t__ EN_RSSI; scalar_t__ Mod_Type; scalar_t__ CAPSELECT; scalar_t__ CLOCK_OUT; } ;
struct dvb_frontend {struct mxl5005s_state* tuner_priv; } ;


 int AGC_EN_RSSI ;
 int AGC_IF ;
 int AGC_RF ;
 int BB_ALPF_BANDSELECT ;
 int BB_BUF ;
 int BB_BUF_OA ;
 int BB_DLPF_BANDSEL ;
 int BB_INITSTATE_DLPF_TUNE ;
 int BB_IQSWAP ;
 int BB_MODE ;
 int DN_IQTN_AMP_CUT ;
 int DRV_RES_SEL ;
 int EN_3P ;
 int EN_AAF ;
 int EN_AUX_3P ;
 int EN_CHP_LIN_B ;
 int IF_SEL_DBL ;
 int I_DRIVER ;
 scalar_t__ MXL_ANALOG_CABLE ;
 scalar_t__ MXL_ANALOG_OTA ;
 scalar_t__ MXL_ATSC ;
 int MXL_Ceiling (unsigned long,int) ;
 scalar_t__ MXL_ControlWrite (struct dvb_frontend*,int ,int) ;
 scalar_t__ MXL_DIGITAL_MODE ;
 scalar_t__ MXL_DVBT ;
 scalar_t__ MXL_IFSynthInit (struct dvb_frontend*) ;
 scalar_t__ MXL_OverwriteICDefault (struct dvb_frontend*) ;
 scalar_t__ MXL_QAM ;
 int RFA_CEIL ;
 int RFA_ENCLKRFAGC ;
 int RFA_FLR ;
 int RFA_RSSI_REF ;
 int RFA_RSSI_REFH ;
 int RFA_RSSI_REFL ;
 int RFSYN_CHP_GAIN ;
 int RFSYN_EN_CHP_HIGAIN ;
 int RFSYN_R_DIV ;
 int SEL_AAF_BAND ;
 int SEQ_ENCLK16_CLK_OUT ;
 int SEQ_EXTDCCAL ;
 int SEQ_EXTIQFSMPULSE ;
 int SEQ_EXTSYNTHCALIF ;
 int SEQ_SEL4_16B ;
 int TG_R_DIV ;
 int XTAL_CAPSELECT ;

__attribute__((used)) static u16 MXL_BlockInit(struct dvb_frontend *fe)
{
 struct mxl5005s_state *state = fe->tuner_priv;
 u16 status = 0;

 status += MXL_OverwriteICDefault(fe);


 status += MXL_ControlWrite(fe, DN_IQTN_AMP_CUT, state->Mode ? 1 : 0);


 status += MXL_ControlWrite(fe, BB_MODE, state->Mode ? 0 : 1);
 status += MXL_ControlWrite(fe, BB_BUF, state->Mode ? 3 : 2);
 status += MXL_ControlWrite(fe, BB_BUF_OA, state->Mode ? 1 : 0);
 status += MXL_ControlWrite(fe, BB_IQSWAP, state->Mode ? 0 : 1);
 status += MXL_ControlWrite(fe, BB_INITSTATE_DLPF_TUNE, 0);


 if (state->Mode) {
  switch (state->Chan_Bandwidth) {
  case 8000000:
   status += MXL_ControlWrite(fe, BB_DLPF_BANDSEL, 0);
   break;
  case 7000000:
   status += MXL_ControlWrite(fe, BB_DLPF_BANDSEL, 2);
   break;
  case 6000000:
   status += MXL_ControlWrite(fe,
     BB_DLPF_BANDSEL, 3);
   break;
  }
 } else {
  switch (state->Chan_Bandwidth) {
  case 8000000:
   status += MXL_ControlWrite(fe, BB_ALPF_BANDSELECT,
     (state->IF_Mode ? 0 : 3));
   break;
  case 7000000:
   status += MXL_ControlWrite(fe, BB_ALPF_BANDSELECT,
     (state->IF_Mode ? 1 : 4));
   break;
  case 6000000:
   status += MXL_ControlWrite(fe, BB_ALPF_BANDSELECT,
     (state->IF_Mode ? 2 : 5));
   break;
  }
 }


 status += MXL_ControlWrite(fe, RFSYN_CHP_GAIN, state->Mode ? 5 : 8);
 status += MXL_ControlWrite(fe,
  RFSYN_EN_CHP_HIGAIN, state->Mode ? 1 : 1);
 status += MXL_ControlWrite(fe, EN_CHP_LIN_B, state->Mode ? 0 : 0);


 if (state->AGC_Mode == 0) {
  status += MXL_ControlWrite(fe, AGC_IF, 15);
  status += MXL_ControlWrite(fe, AGC_RF, 15);
 } else
  status += MXL_ControlWrite(fe, AGC_RF, state->Mode ? 15 : 12);

 if (state->TOP == 55)
  status += MXL_ControlWrite(fe, AGC_IF, 0x0);

 if (state->TOP == 72)
  status += MXL_ControlWrite(fe, AGC_IF, 0x1);

 if (state->TOP == 92)
  status += MXL_ControlWrite(fe, AGC_IF, 0x2);

 if (state->TOP == 110)
  status += MXL_ControlWrite(fe, AGC_IF, 0x3);

 if (state->TOP == 129)
  status += MXL_ControlWrite(fe, AGC_IF, 0x4);

 if (state->TOP == 147)
  status += MXL_ControlWrite(fe, AGC_IF, 0x5);

 if (state->TOP == 168)
  status += MXL_ControlWrite(fe, AGC_IF, 0x6);

 if (state->TOP == 194)
  status += MXL_ControlWrite(fe, AGC_IF, 0x7);

 if (state->TOP == 212)
  status += MXL_ControlWrite(fe, AGC_IF, 0x9);

 if (state->TOP == 232)
  status += MXL_ControlWrite(fe, AGC_IF, 0xA);

 if (state->TOP == 252)
  status += MXL_ControlWrite(fe, AGC_IF, 0xB);

 if (state->TOP == 271)
  status += MXL_ControlWrite(fe, AGC_IF, 0xC);

 if (state->TOP == 292)
  status += MXL_ControlWrite(fe, AGC_IF, 0xD);

 if (state->TOP == 317)
  status += MXL_ControlWrite(fe, AGC_IF, 0xE);

 if (state->TOP == 349)
  status += MXL_ControlWrite(fe, AGC_IF, 0xF);


 status += MXL_IFSynthInit(fe);


 if (state->IF_OUT_LOAD == 200) {
  status += MXL_ControlWrite(fe, DRV_RES_SEL, 6);
  status += MXL_ControlWrite(fe, I_DRIVER, 2);
 }
 if (state->IF_OUT_LOAD == 300) {
  status += MXL_ControlWrite(fe, DRV_RES_SEL, 4);
  status += MXL_ControlWrite(fe, I_DRIVER, 1);
 }




 if (state->Mode) {
  if (state->IF_OUT >= 4000000UL && state->IF_OUT <= 6280000UL) {
   status += MXL_ControlWrite(fe, EN_AAF, 1);
   status += MXL_ControlWrite(fe, EN_3P, 1);
   status += MXL_ControlWrite(fe, EN_AUX_3P, 1);
   status += MXL_ControlWrite(fe, SEL_AAF_BAND, 0);
  }
  if ((state->IF_OUT == 36125000UL) ||
   (state->IF_OUT == 36150000UL)) {
   status += MXL_ControlWrite(fe, EN_AAF, 1);
   status += MXL_ControlWrite(fe, EN_3P, 1);
   status += MXL_ControlWrite(fe, EN_AUX_3P, 1);
   status += MXL_ControlWrite(fe, SEL_AAF_BAND, 1);
  }
  if (state->IF_OUT > 36150000UL) {
   status += MXL_ControlWrite(fe, EN_AAF, 0);
   status += MXL_ControlWrite(fe, EN_3P, 1);
   status += MXL_ControlWrite(fe, EN_AUX_3P, 1);
   status += MXL_ControlWrite(fe, SEL_AAF_BAND, 1);
  }
 } else {
  if (state->IF_OUT >= 4000000UL && state->IF_OUT <= 5000000UL) {
   status += MXL_ControlWrite(fe, EN_AAF, 1);
   status += MXL_ControlWrite(fe, EN_3P, 1);
   status += MXL_ControlWrite(fe, EN_AUX_3P, 1);
   status += MXL_ControlWrite(fe, SEL_AAF_BAND, 0);
  }
  if (state->IF_OUT > 5000000UL) {
   status += MXL_ControlWrite(fe, EN_AAF, 0);
   status += MXL_ControlWrite(fe, EN_3P, 0);
   status += MXL_ControlWrite(fe, EN_AUX_3P, 0);
   status += MXL_ControlWrite(fe, SEL_AAF_BAND, 0);
  }
 }


 if (state->CLOCK_OUT)
  status += MXL_ControlWrite(fe, SEQ_ENCLK16_CLK_OUT, 1);
 else
  status += MXL_ControlWrite(fe, SEQ_ENCLK16_CLK_OUT, 0);

 if (state->DIV_OUT == 1)
  status += MXL_ControlWrite(fe, SEQ_SEL4_16B, 1);
 if (state->DIV_OUT == 0)
  status += MXL_ControlWrite(fe, SEQ_SEL4_16B, 0);


 if (state->CAPSELECT)
  status += MXL_ControlWrite(fe, XTAL_CAPSELECT, 1);
 else
  status += MXL_ControlWrite(fe, XTAL_CAPSELECT, 0);

 if (state->Fxtal >= 12000000UL && state->Fxtal <= 16000000UL)
  status += MXL_ControlWrite(fe, IF_SEL_DBL, 1);
 if (state->Fxtal > 16000000UL && state->Fxtal <= 32000000UL)
  status += MXL_ControlWrite(fe, IF_SEL_DBL, 0);

 if (state->Fxtal >= 12000000UL && state->Fxtal <= 22000000UL)
  status += MXL_ControlWrite(fe, RFSYN_R_DIV, 3);
 if (state->Fxtal > 22000000UL && state->Fxtal <= 32000000UL)
  status += MXL_ControlWrite(fe, RFSYN_R_DIV, 0);


 if (state->Mode == 0 && state->IF_Mode == 1)
  status += MXL_ControlWrite(fe, SEQ_EXTIQFSMPULSE, 0);
 else
  status += MXL_ControlWrite(fe, SEQ_EXTIQFSMPULSE, 1);




 status += MXL_ControlWrite(fe, TG_R_DIV,
  MXL_Ceiling(state->Fxtal, 1000000));




 if (state->EN_RSSI) {
  status += MXL_ControlWrite(fe, SEQ_EXTSYNTHCALIF, 1);
  status += MXL_ControlWrite(fe, SEQ_EXTDCCAL, 1);
  status += MXL_ControlWrite(fe, AGC_EN_RSSI, 1);
  status += MXL_ControlWrite(fe, RFA_ENCLKRFAGC, 1);


  status += MXL_ControlWrite(fe, RFA_RSSI_REF, 2);
  status += MXL_ControlWrite(fe, RFA_RSSI_REFH, 3);
  status += MXL_ControlWrite(fe, RFA_RSSI_REFL, 1);


  status += MXL_ControlWrite(fe, RFA_FLR, 0);
  status += MXL_ControlWrite(fe, RFA_CEIL, 12);
 }




 if (state->Mod_Type == MXL_DVBT) {
  state->AGC_Mode = 1;


  status += MXL_ControlWrite(fe, SEQ_EXTSYNTHCALIF, 1);
  status += MXL_ControlWrite(fe, SEQ_EXTDCCAL, 1);
  status += MXL_ControlWrite(fe, AGC_EN_RSSI, 1);
  status += MXL_ControlWrite(fe, RFA_ENCLKRFAGC, 1);


  status += MXL_ControlWrite(fe, RFA_RSSI_REF, 3);
  status += MXL_ControlWrite(fe, RFA_RSSI_REFH, 5);
  status += MXL_ControlWrite(fe, RFA_RSSI_REFL, 1);


  status += MXL_ControlWrite(fe, RFA_FLR, 2);
  status += MXL_ControlWrite(fe, RFA_CEIL, 13);
  if (state->IF_OUT <= 6280000UL)
   status += MXL_ControlWrite(fe, BB_IQSWAP, 0);
  else
   status += MXL_ControlWrite(fe, BB_IQSWAP, 1);

 }
 if (state->Mod_Type == MXL_ATSC) {
  state->AGC_Mode = 1;


  status += MXL_ControlWrite(fe, SEQ_EXTSYNTHCALIF, 1);
  status += MXL_ControlWrite(fe, SEQ_EXTDCCAL, 1);
  status += MXL_ControlWrite(fe, AGC_EN_RSSI, 1);
  status += MXL_ControlWrite(fe, RFA_ENCLKRFAGC, 1);


  status += MXL_ControlWrite(fe, RFA_RSSI_REF, 2);
  status += MXL_ControlWrite(fe, RFA_RSSI_REFH, 4);
  status += MXL_ControlWrite(fe, RFA_RSSI_REFL, 1);


  status += MXL_ControlWrite(fe, RFA_FLR, 2);
  status += MXL_ControlWrite(fe, RFA_CEIL, 13);
  status += MXL_ControlWrite(fe, BB_INITSTATE_DLPF_TUNE, 1);

  status += MXL_ControlWrite(fe, RFSYN_CHP_GAIN, 5);

  if (state->IF_OUT <= 6280000UL)
   status += MXL_ControlWrite(fe, BB_IQSWAP, 0);
  else
   status += MXL_ControlWrite(fe, BB_IQSWAP, 1);
 }
 if (state->Mod_Type == MXL_QAM) {
  state->Mode = MXL_DIGITAL_MODE;




  status += MXL_ControlWrite(fe, SEQ_EXTSYNTHCALIF, 1);
  status += MXL_ControlWrite(fe, SEQ_EXTDCCAL, 1);
  status += MXL_ControlWrite(fe, AGC_EN_RSSI, 0);
  status += MXL_ControlWrite(fe, RFA_ENCLKRFAGC, 1);


  status += MXL_ControlWrite(fe, RFA_RSSI_REFH, 5);
  status += MXL_ControlWrite(fe, RFA_RSSI_REF, 3);
  status += MXL_ControlWrite(fe, RFA_RSSI_REFL, 2);

  status += MXL_ControlWrite(fe, RFSYN_CHP_GAIN, 3);

  if (state->IF_OUT <= 6280000UL)
   status += MXL_ControlWrite(fe, BB_IQSWAP, 0);
  else
   status += MXL_ControlWrite(fe, BB_IQSWAP, 1);
  status += MXL_ControlWrite(fe, RFSYN_CHP_GAIN, 2);

 }
 if (state->Mod_Type == MXL_ANALOG_CABLE) {



  state->AGC_Mode = 1;


  status += MXL_ControlWrite(fe, SEQ_EXTSYNTHCALIF, 1);
  status += MXL_ControlWrite(fe, SEQ_EXTDCCAL, 1);
  status += MXL_ControlWrite(fe, AGC_EN_RSSI, 0);
  status += MXL_ControlWrite(fe, RFA_ENCLKRFAGC, 1);

  status += MXL_ControlWrite(fe, AGC_IF, 1);
  status += MXL_ControlWrite(fe, AGC_RF, 15);
  status += MXL_ControlWrite(fe, BB_IQSWAP, 1);
 }

 if (state->Mod_Type == MXL_ANALOG_OTA) {




  status += MXL_ControlWrite(fe, SEQ_EXTSYNTHCALIF, 1);
  status += MXL_ControlWrite(fe, SEQ_EXTDCCAL, 1);
  status += MXL_ControlWrite(fe, AGC_EN_RSSI, 1);
  status += MXL_ControlWrite(fe, RFA_ENCLKRFAGC, 1);


  status += MXL_ControlWrite(fe, RFA_RSSI_REFH, 5);
  status += MXL_ControlWrite(fe, RFA_RSSI_REF, 3);
  status += MXL_ControlWrite(fe, RFA_RSSI_REFL, 2);
  status += MXL_ControlWrite(fe, RFSYN_CHP_GAIN, 3);
  status += MXL_ControlWrite(fe, BB_IQSWAP, 1);
 }


 if (state->EN_RSSI == 0) {
  status += MXL_ControlWrite(fe, SEQ_EXTSYNTHCALIF, 1);
  status += MXL_ControlWrite(fe, SEQ_EXTDCCAL, 1);
  status += MXL_ControlWrite(fe, AGC_EN_RSSI, 0);
  status += MXL_ControlWrite(fe, RFA_ENCLKRFAGC, 1);
 }

 return status;
}
