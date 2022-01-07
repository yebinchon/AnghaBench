
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {struct cinergyt2_fe_state* demodulator_priv; } ;
struct TYPE_2__ {int lock_bits; int gain; } ;
struct cinergyt2_fe_state {TYPE_1__ status; int data_mutex; int * data; int d; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 int CINERGYT2_EP1_GET_TUNER_STATUS ;
 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int dvb_usb_generic_rw (int ,int *,int,int *,int,int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (TYPE_1__*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cinergyt2_fe_read_status(struct dvb_frontend *fe,
        enum fe_status *status)
{
 struct cinergyt2_fe_state *state = fe->demodulator_priv;
 int ret;

 mutex_lock(&state->data_mutex);
 state->data[0] = CINERGYT2_EP1_GET_TUNER_STATUS;

 ret = dvb_usb_generic_rw(state->d, state->data, 1,
     state->data, sizeof(state->status), 0);
 if (!ret)
  memcpy(&state->status, state->data, sizeof(state->status));
 mutex_unlock(&state->data_mutex);

 if (ret < 0)
  return ret;

 *status = 0;

 if (0xffff - le16_to_cpu(state->status.gain) > 30)
  *status |= FE_HAS_SIGNAL;
 if (state->status.lock_bits & (1 << 6))
  *status |= FE_HAS_LOCK;
 if (state->status.lock_bits & (1 << 5))
  *status |= FE_HAS_SYNC;
 if (state->status.lock_bits & (1 << 4))
  *status |= FE_HAS_CARRIER;
 if (state->status.lock_bits & (1 << 1))
  *status |= FE_HAS_VITERBI;

 if ((*status & (FE_HAS_CARRIER | FE_HAS_VITERBI | FE_HAS_SYNC)) !=
   (FE_HAS_CARRIER | FE_HAS_VITERBI | FE_HAS_SYNC))
  *status &= ~FE_HAS_LOCK;

 return 0;
}
