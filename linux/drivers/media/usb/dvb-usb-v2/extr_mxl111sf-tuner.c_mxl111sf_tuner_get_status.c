
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxl111sf_tuner_state {int dummy; } ;
struct dvb_frontend {struct mxl111sf_tuner_state* tuner_priv; } ;


 int TUNER_STATUS_LOCKED ;
 int mxl1x1sf_tuner_get_lock_status (struct mxl111sf_tuner_state*,int*,int*) ;
 scalar_t__ mxl_fail (int) ;
 int mxl_info (char*,char*,char*) ;

__attribute__((used)) static int mxl111sf_tuner_get_status(struct dvb_frontend *fe, u32 *status)
{
 struct mxl111sf_tuner_state *state = fe->tuner_priv;
 int rf_locked, ref_locked, ret;

 *status = 0;

 ret = mxl1x1sf_tuner_get_lock_status(state, &rf_locked, &ref_locked);
 if (mxl_fail(ret))
  goto fail;
 mxl_info("%s%s", rf_locked ? "rf locked " : "",
   ref_locked ? "ref locked" : "");

 if ((rf_locked) || (ref_locked))
  *status |= TUNER_STATUS_LOCKED;
fail:
 return ret;
}
