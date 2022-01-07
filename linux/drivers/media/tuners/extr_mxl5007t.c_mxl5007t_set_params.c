
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mxl5007t_state {int frequency; int lock; int bandwidth; } ;
struct TYPE_2__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dtv_frontend_properties {int delivery_system; int frequency; int bandwidth_hz; } ;
struct dvb_frontend {TYPE_1__ ops; struct mxl5007t_state* tuner_priv; struct dtv_frontend_properties dtv_property_cache; } ;
typedef enum mxl5007t_mode { ____Placeholder_mxl5007t_mode } mxl5007t_mode ;
typedef enum mxl5007t_bw_mhz { ____Placeholder_mxl5007t_bw_mhz } mxl5007t_bw_mhz ;


 int EINVAL ;
 int MxL_BW_6MHz ;
 int MxL_BW_7MHz ;
 int MxL_BW_8MHz ;
 int MxL_MODE_ATSC ;
 int MxL_MODE_CABLE ;
 int MxL_MODE_DVBT ;




 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int mxl5007t_tuner_init (struct mxl5007t_state*,int) ;
 int mxl5007t_tuner_rf_tune (struct mxl5007t_state*,int,int) ;
 int mxl_err (char*) ;
 scalar_t__ mxl_fail (int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

__attribute__((used)) static int mxl5007t_set_params(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 u32 delsys = c->delivery_system;
 struct mxl5007t_state *state = fe->tuner_priv;
 enum mxl5007t_bw_mhz bw;
 enum mxl5007t_mode mode;
 int ret;
 u32 freq = c->frequency;

 switch (delsys) {
 case 131:
  mode = MxL_MODE_ATSC;
  bw = MxL_BW_6MHz;
  break;
 case 130:
  mode = MxL_MODE_CABLE;
  bw = MxL_BW_6MHz;
  break;
 case 129:
 case 128:
  mode = MxL_MODE_DVBT;
  switch (c->bandwidth_hz) {
  case 6000000:
   bw = MxL_BW_6MHz;
   break;
  case 7000000:
   bw = MxL_BW_7MHz;
   break;
  case 8000000:
   bw = MxL_BW_8MHz;
   break;
  default:
   return -EINVAL;
  }
  break;
 default:
  mxl_err("modulation type not supported!");
  return -EINVAL;
 }

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);

 mutex_lock(&state->lock);

 ret = mxl5007t_tuner_init(state, mode);
 if (mxl_fail(ret))
  goto fail;

 ret = mxl5007t_tuner_rf_tune(state, freq, bw);
 if (mxl_fail(ret))
  goto fail;

 state->frequency = freq;
 state->bandwidth = c->bandwidth_hz;
fail:
 mutex_unlock(&state->lock);

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 return ret;
}
