
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct dvb_usb_adapter {struct dib0700_adapter_state* priv; } ;
struct TYPE_5__ {int frequency; int bandwidth_hz; } ;
struct dvb_frontend {TYPE_2__ dtv_property_cache; TYPE_1__* dvb; } ;
struct TYPE_6__ {int (* set_tune_state ) (struct dvb_frontend*,int ) ;int (* pwm_agc_reset ) (struct dvb_frontend*) ;int (* set_gpio ) (struct dvb_frontend*,int,int ,int) ;int (* set_wbd_ref ) (struct dvb_frontend*,int) ;int (* ctrl_timf ) (struct dvb_frontend*,int ,int) ;int (* update_pll ) (struct dvb_frontend*,int *,int,int) ;} ;
struct dib0700_adapter_state {int (* set_param_save ) (struct dvb_frontend*) ;TYPE_3__ dib8000_ops; } ;
typedef enum frontend_tune_state { ____Placeholder_frontend_tune_state } frontend_tune_state ;
struct TYPE_4__ {struct dvb_usb_adapter* priv; } ;


 int BAND_CBAND ;
 int BAND_OF_FREQUENCY (int) ;


 int CT_AGC_START ;
 int CT_AGC_STEP_0 ;
 int CT_AGC_STEP_1 ;
 int CT_AGC_STOP ;
 int CT_DEMOD_START ;
 int CT_SHUTDOWN ;
 int DEMOD_TIMF_SET ;
 int EINVAL ;
 int deb_info (char*,...) ;
 int dib0090_gain_control (struct dvb_frontend*) ;
 int dib0090_get_current_gain (struct dvb_frontend*,int *,int *,int*,int*) ;
 int dib0090_get_tune_state (struct dvb_frontend*) ;
 int dib0090_get_wbd_target (struct dvb_frontend*) ;
 int dib0090_pwm_gain_reset (struct dvb_frontend*) ;
 int dib0090_set_tune_state (struct dvb_frontend*,int ) ;
 int dib8090_compute_pll_parameters (struct dvb_frontend*) ;
 int dib8090_pll_config_12mhz ;
 int msleep (int) ;
 int stub1 (struct dvb_frontend*,int,int ,int) ;
 int stub10 (struct dvb_frontend*) ;
 int stub11 (struct dvb_frontend*,int ) ;
 int stub2 (struct dvb_frontend*,int,int ,int) ;
 int stub3 (struct dvb_frontend*) ;
 int stub4 (struct dvb_frontend*,int *,int,int) ;
 int stub5 (struct dvb_frontend*,int *,int,int) ;
 int stub6 (struct dvb_frontend*,int ,int) ;
 int stub7 (struct dvb_frontend*,int) ;
 int stub8 (struct dvb_frontend*,int,int ,int) ;
 int stub9 (struct dvb_frontend*,int,int ,int) ;

__attribute__((used)) static int dib8096_set_param_override(struct dvb_frontend *fe)
{
 struct dvb_usb_adapter *adap = fe->dvb->priv;
 struct dib0700_adapter_state *state = adap->priv;
 u8 pll_ratio, band = BAND_OF_FREQUENCY(fe->dtv_property_cache.frequency / 1000);
 u16 target, ltgain, rf_gain_limit;
 u32 timf;
 int ret = 0;
 enum frontend_tune_state tune_state = CT_SHUTDOWN;

 switch (band) {
 default:
   deb_info("Warning : Rf frequency  (%iHz) is not in the supported range, using VHF switch ", fe->dtv_property_cache.frequency);

 case 128:
   state->dib8000_ops.set_gpio(fe, 3, 0, 1);
   break;
 case 129:
   state->dib8000_ops.set_gpio(fe, 3, 0, 0);
   break;
 }

 ret = state->set_param_save(fe);
 if (ret < 0)
  return ret;

 if (fe->dtv_property_cache.bandwidth_hz != 6000000) {
  deb_info("only 6MHz bandwidth is supported\n");
  return -EINVAL;
 }


 state->dib8000_ops.update_pll(fe, &dib8090_pll_config_12mhz, fe->dtv_property_cache.bandwidth_hz / 1000, 0);


 pll_ratio = dib8090_compute_pll_parameters(fe);
 if (pll_ratio == 17)
  timf = 21387946;
 else if (pll_ratio == 18)
  timf = 20199727;
 else if (pll_ratio == 19)
  timf = 19136583;
 else
  timf = 18179756;


 state->dib8000_ops.update_pll(fe, &dib8090_pll_config_12mhz, fe->dtv_property_cache.bandwidth_hz / 1000, pll_ratio);

 state->dib8000_ops.ctrl_timf(fe, DEMOD_TIMF_SET, timf);

 if (band != BAND_CBAND) {

  target = (dib0090_get_wbd_target(fe) * 8 * 18 / 33 + 1) / 2;
  state->dib8000_ops.set_wbd_ref(fe, target);
 }

 if (band == BAND_CBAND) {
  deb_info("tuning in CBAND - soft-AGC startup\n");
  dib0090_set_tune_state(fe, CT_AGC_START);

  do {
   ret = dib0090_gain_control(fe);
   msleep(ret);
   tune_state = dib0090_get_tune_state(fe);
   if (tune_state == CT_AGC_STEP_0)
    state->dib8000_ops.set_gpio(fe, 6, 0, 1);
   else if (tune_state == CT_AGC_STEP_1) {
    dib0090_get_current_gain(fe, ((void*)0), ((void*)0), &rf_gain_limit, &ltgain);
    if (rf_gain_limit < 2000)
     state->dib8000_ops.set_gpio(fe, 6, 0, 0);
   }
  } while (tune_state < CT_AGC_STOP);

  deb_info("switching to PWM AGC\n");
  dib0090_pwm_gain_reset(fe);
  state->dib8000_ops.pwm_agc_reset(fe);
  state->dib8000_ops.set_tune_state(fe, CT_DEMOD_START);
 } else {

  deb_info("not tuning in CBAND - standard AGC startup\n");
  dib0090_pwm_gain_reset(fe);
 }

 return 0;
}
