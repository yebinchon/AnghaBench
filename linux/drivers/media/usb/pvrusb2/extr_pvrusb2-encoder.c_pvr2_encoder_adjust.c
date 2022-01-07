
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int enc_cur_valid; int enc_ctl_state; int enc_cur_state; } ;


 int PVR2_TRACE_ERROR_LEGS ;
 int cx2341x_update (struct pvr2_hdw*,int ,int *,int *) ;
 int pvr2_encoder_cmd ;
 int pvr2_trace (int ,char*,int) ;

int pvr2_encoder_adjust(struct pvr2_hdw *hdw)
{
 int ret;
 ret = cx2341x_update(hdw,pvr2_encoder_cmd,
        (hdw->enc_cur_valid ? &hdw->enc_cur_state : ((void*)0)),
        &hdw->enc_ctl_state);
 if (ret) {
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "Error from cx2341x module code=%d",ret);
 } else {
  hdw->enc_cur_state = hdw->enc_ctl_state;
  hdw->enc_cur_valid = !0;
 }
 return ret;
}
