
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef void* u32 ;
typedef void* u16 ;
struct mxl5005s_state {void* TF_Type; void* Mod_Type; void* EN_RSSI; void* CAPSELECT; void* DIV_OUT; void* CLOCK_OUT; void* IF_OUT_LOAD; void* TOP; void* AGC_Mode; void* Fxtal; void* IF_OUT; void* Chan_Bandwidth; void* IF_Mode; void* Mode; } ;
struct dvb_frontend {struct mxl5005s_state* tuner_priv; } ;


 int InitTunerControls (struct dvb_frontend*) ;
 int MXL_SynthIFLO_Calc (struct dvb_frontend*) ;

__attribute__((used)) static u16 MXL5005_TunerConfig(struct dvb_frontend *fe,
 u8 Mode,
 u8 IF_mode,
 u32 Bandwidth,
 u32 IF_out,
 u32 Fxtal,
 u8 AGC_Mode,
 u16 TOP,
 u16 IF_OUT_LOAD,
 u8 CLOCK_OUT,
 u8 DIV_OUT,
 u8 CAPSELECT,
 u8 EN_RSSI,



 u8 Mod_Type,



 u8 TF_Type
 )
{
 struct mxl5005s_state *state = fe->tuner_priv;

 state->Mode = Mode;
 state->IF_Mode = IF_mode;
 state->Chan_Bandwidth = Bandwidth;
 state->IF_OUT = IF_out;
 state->Fxtal = Fxtal;
 state->AGC_Mode = AGC_Mode;
 state->TOP = TOP;
 state->IF_OUT_LOAD = IF_OUT_LOAD;
 state->CLOCK_OUT = CLOCK_OUT;
 state->DIV_OUT = DIV_OUT;
 state->CAPSELECT = CAPSELECT;
 state->EN_RSSI = EN_RSSI;
 state->Mod_Type = Mod_Type;
 state->TF_Type = TF_Type;


 InitTunerControls(fe);


 MXL_SynthIFLO_Calc(fe);

 return 0;
}
