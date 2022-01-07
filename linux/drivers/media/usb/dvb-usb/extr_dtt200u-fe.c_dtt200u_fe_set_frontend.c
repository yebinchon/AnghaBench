
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dtv_frontend_properties {int frequency; int bandwidth_hz; } ;
struct dvb_frontend {struct dtt200u_fe_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct dtt200u_fe_state {int* data; int data_mutex; int d; } ;


 int EINVAL ;
 int SET_BANDWIDTH ;
 int SET_RF_FREQ ;
 int dvb_usb_generic_write (int ,int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dtt200u_fe_set_frontend(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *fep = &fe->dtv_property_cache;
 struct dtt200u_fe_state *state = fe->demodulator_priv;
 int ret;
 u16 freq = fep->frequency / 250000;

 mutex_lock(&state->data_mutex);
 state->data[0] = SET_BANDWIDTH;
 switch (fep->bandwidth_hz) {
 case 8000000:
  state->data[1] = 8;
  break;
 case 7000000:
  state->data[1] = 7;
  break;
 case 6000000:
  state->data[1] = 6;
  break;
 default:
  ret = -EINVAL;
  goto ret;
 }

 ret = dvb_usb_generic_write(state->d, state->data, 2);
 if (ret < 0)
  goto ret;

 state->data[0] = SET_RF_FREQ;
 state->data[1] = freq & 0xff;
 state->data[2] = (freq >> 8) & 0xff;
 ret = dvb_usb_generic_write(state->d, state->data, 3);
 if (ret < 0)
  goto ret;

ret:
 mutex_unlock(&state->data_mutex);
 return ret;
}
