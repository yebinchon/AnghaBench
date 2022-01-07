
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_hdw {scalar_t__ pathway_state; scalar_t__ fw1_state; unsigned int master_state; int state_wait_data; scalar_t__ state_decoder_run; scalar_t__ state_encoder_run; scalar_t__ state_usbstream_run; scalar_t__ flag_decoder_missed; scalar_t__ flag_tripped; int state_encoder_ok; TYPE_1__* hdw_desc; int flag_ok; } ;
struct TYPE_2__ {scalar_t__ flag_digital_requires_cx23416; } ;


 scalar_t__ FW1_STATE_OK ;
 scalar_t__ PVR2_PATHWAY_DIGITAL ;
 unsigned int PVR2_STATE_COLD ;
 unsigned int PVR2_STATE_DEAD ;
 unsigned int PVR2_STATE_ERROR ;
 unsigned int PVR2_STATE_READY ;
 unsigned int PVR2_STATE_RUN ;
 unsigned int PVR2_STATE_WARM ;
 int PVR2_TRACE_STATE ;
 int PVR2_TRACE_STBITS ;
 int pvr2_get_state_name (unsigned int) ;
 int pvr2_hdw_state_log_state (struct pvr2_hdw*) ;
 int pvr2_hdw_state_update (struct pvr2_hdw*) ;
 int pvr2_led_ctrl (struct pvr2_hdw*,int) ;
 int pvr2_trace (int,char*,...) ;
 int pvrusb2_debug ;
 int wake_up (int *) ;

__attribute__((used)) static int pvr2_hdw_state_eval(struct pvr2_hdw *hdw)
{
 unsigned int st;
 int state_updated = 0;
 int callback_flag = 0;
 int analog_mode;

 pvr2_trace(PVR2_TRACE_STBITS,
     "Drive state check START");
 if (pvrusb2_debug & PVR2_TRACE_STBITS) {
  pvr2_hdw_state_log_state(hdw);
 }


 state_updated = pvr2_hdw_state_update(hdw);

 analog_mode = (hdw->pathway_state != PVR2_PATHWAY_DIGITAL);


 if (!hdw->flag_ok) {
  st = PVR2_STATE_DEAD;
 } else if (hdw->fw1_state != FW1_STATE_OK) {
  st = PVR2_STATE_COLD;
 } else if ((analog_mode ||
      hdw->hdw_desc->flag_digital_requires_cx23416) &&
     !hdw->state_encoder_ok) {
  st = PVR2_STATE_WARM;
 } else if (hdw->flag_tripped ||
     (analog_mode && hdw->flag_decoder_missed)) {
  st = PVR2_STATE_ERROR;
 } else if (hdw->state_usbstream_run &&
     (!analog_mode ||
      (hdw->state_encoder_run && hdw->state_decoder_run))) {
  st = PVR2_STATE_RUN;
 } else {
  st = PVR2_STATE_READY;
 }
 if (hdw->master_state != st) {
  pvr2_trace(PVR2_TRACE_STATE,
      "Device state change from %s to %s",
      pvr2_get_state_name(hdw->master_state),
      pvr2_get_state_name(st));
  pvr2_led_ctrl(hdw,st == PVR2_STATE_RUN);
  hdw->master_state = st;
  state_updated = !0;
  callback_flag = !0;
 }
 if (state_updated) {

  wake_up(&hdw->state_wait_data);
 }

 if (pvrusb2_debug & PVR2_TRACE_STBITS) {
  pvr2_hdw_state_log_state(hdw);
 }
 pvr2_trace(PVR2_TRACE_STBITS,
     "Drive state check DONE callback=%d",callback_flag);

 return callback_flag;
}
