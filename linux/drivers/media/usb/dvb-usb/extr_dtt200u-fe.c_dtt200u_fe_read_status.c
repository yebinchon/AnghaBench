
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dtt200u_fe_state* demodulator_priv; } ;
struct dtt200u_fe_state {int* data; int data_mutex; int d; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int FE_TIMEDOUT ;
 int GET_TUNE_STATUS ;
 int dvb_usb_generic_rw (int ,int*,int,int*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dtt200u_fe_read_status(struct dvb_frontend *fe,
      enum fe_status *stat)
{
 struct dtt200u_fe_state *state = fe->demodulator_priv;
 int ret;

 mutex_lock(&state->data_mutex);
 state->data[0] = GET_TUNE_STATUS;

 ret = dvb_usb_generic_rw(state->d, state->data, 1, state->data, 3, 0);
 if (ret < 0) {
  *stat = 0;
  mutex_unlock(&state->data_mutex);
  return ret;
 }

 switch (state->data[0]) {
  case 0x01:
   *stat = FE_HAS_SIGNAL | FE_HAS_CARRIER |
    FE_HAS_VITERBI | FE_HAS_SYNC | FE_HAS_LOCK;
   break;
  case 0x00:
   *stat = FE_TIMEDOUT;
   break;
  default:
  case 0x02:
   *stat = 0;
   break;
 }
 mutex_unlock(&state->data_mutex);
 return 0;
}
