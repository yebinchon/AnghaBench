
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {struct dtt200u_fe_state* demodulator_priv; } ;
struct dtt200u_fe_state {int* data; int data_mutex; int d; } ;


 int GET_RS_UNCOR_BLK_CNT ;
 int dvb_usb_generic_rw (int ,int*,int,int*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dtt200u_fe_read_unc_blocks(struct dvb_frontend* fe, u32 *unc)
{
 struct dtt200u_fe_state *state = fe->demodulator_priv;
 int ret;

 mutex_lock(&state->data_mutex);
 state->data[0] = GET_RS_UNCOR_BLK_CNT;

 ret = dvb_usb_generic_rw(state->d, state->data, 1, state->data, 2, 0);
 if (ret >= 0)
  *unc = (state->data[0] << 8) | state->data[1];

 mutex_unlock(&state->data_mutex);
 return ret;
}
