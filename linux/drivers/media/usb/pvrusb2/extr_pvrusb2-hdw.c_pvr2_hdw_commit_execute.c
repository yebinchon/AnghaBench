
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_ext_controls {int count; int value; int id; struct v4l2_ext_controls* controls; } ;
struct v4l2_ext_control {int count; int value; int id; struct v4l2_ext_control* controls; } ;
struct TYPE_6__ {int video_gop_size; } ;
struct pvr2_hdw {int state_pathway_ok; scalar_t__ input_val; scalar_t__ pathway_state; int std_mask_cur; int res_ver_val; int res_ver_dirty; int res_hor_dirty; scalar_t__ cropw_val; scalar_t__ res_hor_val; int cropw_dirty; scalar_t__ croph_val; int croph_dirty; scalar_t__ active_stream_type; scalar_t__ desired_stream_type; int state_pipeline_pause; int srate_val; unsigned int control_cnt; int state_pipeline_config; scalar_t__ state_encoder_run; struct pvr2_ctrl* controls; scalar_t__ force_dirty; scalar_t__ tuner_updated; TYPE_1__* hdw_desc; TYPE_3__ enc_ctl_state; scalar_t__ srate_dirty; int state_pipeline_idle; scalar_t__ input_dirty; scalar_t__ enc_unsafe_stale; scalar_t__ std_dirty; } ;
struct pvr2_ctrl {TYPE_2__* info; } ;
typedef int cs ;
typedef int c1 ;
struct TYPE_5__ {int (* clear_dirty ) (struct pvr2_ctrl*) ;} ;
struct TYPE_4__ {scalar_t__ signal_routing_scheme; } ;


 scalar_t__ PVR2_CVAL_INPUT_DTV ;
 scalar_t__ PVR2_CVAL_INPUT_RADIO ;
 scalar_t__ PVR2_PATHWAY_ANALOG ;
 scalar_t__ PVR2_PATHWAY_DIGITAL ;
 scalar_t__ PVR2_ROUTING_SCHEME_GOTVIEW ;
 int V4L2_CID_MPEG_AUDIO_SAMPLING_FREQ ;
 int V4L2_CID_MPEG_VIDEO_GOP_SIZE ;
 int V4L2_STD_525_60 ;
 int VIDIOC_S_EXT_CTRLS ;
 int cx2341x_ext_ctrls (TYPE_3__*,int ,struct v4l2_ext_controls*,int ) ;
 int memset (struct v4l2_ext_controls*,int ,int) ;
 void* min (int,scalar_t__) ;
 scalar_t__ pvr2_encoder_adjust (struct pvr2_hdw*) ;
 int pvr2_hdw_gpio_chg_out (struct pvr2_hdw*,int,int ) ;
 int pvr2_hdw_gpio_get_out (struct pvr2_hdw*,int *) ;
 int pvr2_subdev_update (struct pvr2_hdw*) ;
 int stub1 (struct pvr2_ctrl*) ;
 int trace_stbit (char*,int) ;

__attribute__((used)) static int pvr2_hdw_commit_execute(struct pvr2_hdw *hdw)
{
 unsigned int idx;
 struct pvr2_ctrl *cptr;
 int disruptive_change;

 if (hdw->input_dirty && hdw->state_pathway_ok &&
     (((hdw->input_val == PVR2_CVAL_INPUT_DTV) ?
       PVR2_PATHWAY_DIGITAL : PVR2_PATHWAY_ANALOG) !=
      hdw->pathway_state)) {

  hdw->state_pathway_ok = 0;
  trace_stbit("state_pathway_ok", hdw->state_pathway_ok);
 }
 if (!hdw->state_pathway_ok) {

  return 0;
 }



 if (hdw->std_dirty) {
  int nvres;
  int gop_size;
  if (hdw->std_mask_cur & V4L2_STD_525_60) {
   nvres = 480;
   gop_size = 15;
  } else {
   nvres = 576;
   gop_size = 12;
  }


  if (nvres != hdw->res_ver_val) {
   hdw->res_ver_val = nvres;
   hdw->res_ver_dirty = !0;
  }


  if (gop_size != hdw->enc_ctl_state.video_gop_size) {
   struct v4l2_ext_controls cs;
   struct v4l2_ext_control c1;
   memset(&cs, 0, sizeof(cs));
   memset(&c1, 0, sizeof(c1));
   cs.controls = &c1;
   cs.count = 1;
   c1.id = V4L2_CID_MPEG_VIDEO_GOP_SIZE;
   c1.value = gop_size;
   cx2341x_ext_ctrls(&hdw->enc_ctl_state, 0, &cs,
       VIDIOC_S_EXT_CTRLS);
  }
 }







 if (hdw->res_hor_dirty && hdw->cropw_val < hdw->res_hor_val) {
  hdw->cropw_val = hdw->res_hor_val;
  hdw->cropw_dirty = !0;
 } else if (hdw->cropw_dirty) {
  hdw->res_hor_dirty = !0;
  hdw->res_hor_val = min(720, hdw->cropw_val);
 }
 if (hdw->res_ver_dirty && hdw->croph_val < hdw->res_ver_val) {
  hdw->croph_val = hdw->res_ver_val;
  hdw->croph_dirty = !0;
 } else if (hdw->croph_dirty) {
  int nvres = hdw->std_mask_cur & V4L2_STD_525_60 ? 480 : 576;
  hdw->res_ver_dirty = !0;
  hdw->res_ver_val = min(nvres, hdw->croph_val);
 }





 disruptive_change =
  (hdw->std_dirty ||
   hdw->enc_unsafe_stale ||
   hdw->srate_dirty ||
   hdw->res_ver_dirty ||
   hdw->res_hor_dirty ||
   hdw->cropw_dirty ||
   hdw->croph_dirty ||
   hdw->input_dirty ||
   (hdw->active_stream_type != hdw->desired_stream_type));
 if (disruptive_change && !hdw->state_pipeline_idle) {



  hdw->state_pipeline_pause = !0;
  return 0;
 }

 if (hdw->srate_dirty) {




  struct v4l2_ext_controls cs;
  struct v4l2_ext_control c1;
  memset(&cs,0,sizeof(cs));
  memset(&c1,0,sizeof(c1));
  cs.controls = &c1;
  cs.count = 1;
  c1.id = V4L2_CID_MPEG_AUDIO_SAMPLING_FREQ;
  c1.value = hdw->srate_val;
  cx2341x_ext_ctrls(&hdw->enc_ctl_state, 0, &cs,VIDIOC_S_EXT_CTRLS);
 }

 if (hdw->active_stream_type != hdw->desired_stream_type) {

  hdw->active_stream_type = hdw->desired_stream_type;
 }

 if (hdw->hdw_desc->signal_routing_scheme ==
     PVR2_ROUTING_SCHEME_GOTVIEW) {
  u32 b;

  pvr2_hdw_gpio_get_out(hdw,&b);
  if (hdw->input_val == PVR2_CVAL_INPUT_RADIO) {

   pvr2_hdw_gpio_chg_out(hdw,(1 << 11),~0);
  } else {

   pvr2_hdw_gpio_chg_out(hdw,(1 << 11),0);
  }
 }


 pvr2_subdev_update(hdw);

 hdw->tuner_updated = 0;
 hdw->force_dirty = 0;
 for (idx = 0; idx < hdw->control_cnt; idx++) {
  cptr = hdw->controls + idx;
  if (!cptr->info->clear_dirty) continue;
  cptr->info->clear_dirty(cptr);
 }

 if ((hdw->pathway_state == PVR2_PATHWAY_ANALOG) &&
     hdw->state_encoder_run) {



  if (pvr2_encoder_adjust(hdw) < 0) return !0;
 }

 hdw->state_pipeline_config = !0;



 trace_stbit("state_pipeline_config",hdw->state_pipeline_config);
 return !0;
}
