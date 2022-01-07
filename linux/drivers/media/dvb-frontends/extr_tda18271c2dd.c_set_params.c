
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tda_state {int m_SettlingTime; int m_Frequency; } ;
struct TYPE_2__ {int bandwidth_hz; int delivery_system; int frequency; } ;
struct dvb_frontend {TYPE_1__ dtv_property_cache; struct tda_state* tuner_priv; } ;


 int ChannelConfiguration (struct tda_state*,int ,int) ;
 int EINVAL ;
 int HF_DVBC_6MHZ ;
 int HF_DVBC_7MHZ ;
 int HF_DVBC_8MHZ ;
 int HF_DVBT_6MHZ ;
 int HF_DVBT_7MHZ ;
 int HF_DVBT_8MHZ ;
 int RFTrackingFiltersCorrection (struct tda_state*,int ) ;




 int msleep (int ) ;

__attribute__((used)) static int set_params(struct dvb_frontend *fe)
{
 struct tda_state *state = fe->tuner_priv;
 int status = 0;
 int Standard;
 u32 bw = fe->dtv_property_cache.bandwidth_hz;
 u32 delsys = fe->dtv_property_cache.delivery_system;

 state->m_Frequency = fe->dtv_property_cache.frequency;

 switch (delsys) {
 case 129:
 case 128:
  switch (bw) {
  case 6000000:
   Standard = HF_DVBT_6MHZ;
   break;
  case 7000000:
   Standard = HF_DVBT_7MHZ;
   break;
  case 8000000:
   Standard = HF_DVBT_8MHZ;
   break;
  default:
   return -EINVAL;
  }
  break;
 case 131:
 case 130:
  if (bw <= 6000000)
   Standard = HF_DVBC_6MHZ;
  else if (bw <= 7000000)
   Standard = HF_DVBC_7MHZ;
  else
   Standard = HF_DVBC_8MHZ;
  break;
 default:
  return -EINVAL;
 }
 do {
  status = RFTrackingFiltersCorrection(state, state->m_Frequency);
  if (status < 0)
   break;
  status = ChannelConfiguration(state, state->m_Frequency,
           Standard);
  if (status < 0)
   break;

  msleep(state->m_SettlingTime);
 } while (0);
 return status;
}
