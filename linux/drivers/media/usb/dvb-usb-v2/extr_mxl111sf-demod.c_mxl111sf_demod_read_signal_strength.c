
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mxl111sf_demod_state {int dummy; } ;
struct dvb_frontend {struct mxl111sf_demod_state* demodulator_priv; } ;
typedef enum fe_modulation { ____Placeholder_fe_modulation } fe_modulation ;


 int EINVAL ;



 int min (int,int) ;
 int mxl111sf_demod_calc_snr (struct mxl111sf_demod_state*,int*) ;
 int mxl1x1sf_demod_get_tps_modulation (struct mxl111sf_demod_state*,int*) ;

__attribute__((used)) static int mxl111sf_demod_read_signal_strength(struct dvb_frontend *fe,
            u16 *signal_strength)
{
 struct mxl111sf_demod_state *state = fe->demodulator_priv;
 enum fe_modulation modulation;
 int ret;
 u16 snr;

 ret = mxl111sf_demod_calc_snr(state, &snr);
 if (ret < 0)
  return ret;
 ret = mxl1x1sf_demod_get_tps_modulation(state, &modulation);
 if (ret < 0)
  return ret;

 switch (modulation) {
 case 128:
  *signal_strength = (snr >= 1300) ?
   min(65535, snr * 44) : snr * 38;
  break;
 case 130:
  *signal_strength = (snr >= 1500) ?
   min(65535, snr * 38) : snr * 33;
  break;
 case 129:
  *signal_strength = (snr >= 2000) ?
   min(65535, snr * 29) : snr * 25;
  break;
 default:
  *signal_strength = 0;
  return -EINVAL;
 }

 return 0;
}
