
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct dtt200u_fe_state* demodulator_priv; } ;
struct dtt200u_fe_state {int* data; int data_mutex; int d; } ;


 int GET_AGC ;
 int dvb_usb_generic_rw (int ,int*,int,int*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dtt200u_fe_read_signal_strength(struct dvb_frontend* fe, u16 *strength)
{
 struct dtt200u_fe_state *state = fe->demodulator_priv;
 int ret;

 mutex_lock(&state->data_mutex);
 state->data[0] = GET_AGC;

 ret = dvb_usb_generic_rw(state->d, state->data, 1, state->data, 1, 0);
 if (ret >= 0)
  *strength = (state->data[0] << 8) | state->data[0];

 mutex_unlock(&state->data_mutex);
 return ret;
}
