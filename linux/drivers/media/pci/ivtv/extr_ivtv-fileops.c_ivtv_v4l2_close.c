
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fh {int dummy; } ;
struct ivtv_stream {scalar_t__ type; int s_flags; int * fh; int name; } ;
struct ivtv_open_id {size_t type; int fh; struct ivtv* itv; } ;
struct TYPE_2__ {int video_mute_yuv; int video_mute; } ;
struct ivtv {int hw_flags; scalar_t__ output_mode; int serialize_lock; struct ivtv_stream* streams; TYPE_1__ cxhdl; int capturing; int std; int i_flags; } ;
struct file {struct v4l2_fh* private_data; } ;


 int CX2341X_ENC_MUTE_VIDEO ;
 int IVTV_DEBUG_FILE (char*,int ) ;
 scalar_t__ IVTV_DEC_STREAM_TYPE_MPG ;
 size_t IVTV_DEC_STREAM_TYPE_VOUT ;
 size_t IVTV_ENC_STREAM_TYPE_RAD ;
 int IVTV_F_I_RADIO_USER ;
 int IVTV_F_S_APPL_IO ;
 int IVTV_HW_SAA711X ;
 scalar_t__ OUT_NONE ;
 int SAA7115_FREQ_32_11_MHZ ;
 int V4L2_DEC_CMD_STOP_IMMEDIATELY ;
 int V4L2_DEC_CMD_STOP_TO_BLACK ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 struct ivtv_open_id* fh2id (struct v4l2_fh*) ;
 int ivtv_audio_set_io (struct ivtv*) ;
 int ivtv_call_all (struct ivtv*,int ,int ,int ) ;
 int ivtv_call_hw (struct ivtv*,int,int ,int ,int ,int ) ;
 int ivtv_disable_cc (struct ivtv*) ;
 int ivtv_mute (struct ivtv*) ;
 int ivtv_stop_capture (struct ivtv_open_id*,int ) ;
 int ivtv_stop_decoding (struct ivtv_open_id*,int,int ) ;
 int ivtv_unmute (struct ivtv*) ;
 int ivtv_vapi (struct ivtv*,int ,int,int) ;
 int kfree (struct ivtv_open_id*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_crystal_freq ;
 int s_std ;
 int test_bit (int ,int *) ;
 int v4l2_ctrl_g_ctrl (int ) ;
 int v4l2_fh_del (struct v4l2_fh*) ;
 int v4l2_fh_exit (struct v4l2_fh*) ;
 scalar_t__ v4l2_fh_is_singular_file (struct file*) ;
 int video ;

int ivtv_v4l2_close(struct file *filp)
{
 struct v4l2_fh *fh = filp->private_data;
 struct ivtv_open_id *id = fh2id(fh);
 struct ivtv *itv = id->itv;
 struct ivtv_stream *s = &itv->streams[id->type];

 IVTV_DEBUG_FILE("close %s\n", s->name);

 mutex_lock(&itv->serialize_lock);


 if (id->type == IVTV_ENC_STREAM_TYPE_RAD &&
   v4l2_fh_is_singular_file(filp)) {

  ivtv_mute(itv);

  clear_bit(IVTV_F_I_RADIO_USER, &itv->i_flags);

  ivtv_call_all(itv, video, s_std, itv->std);

  ivtv_audio_set_io(itv);
  if (itv->hw_flags & IVTV_HW_SAA711X) {
   ivtv_call_hw(itv, IVTV_HW_SAA711X, video, s_crystal_freq,
     SAA7115_FREQ_32_11_MHZ, 0);
  }
  if (atomic_read(&itv->capturing) > 0) {

   ivtv_vapi(itv, CX2341X_ENC_MUTE_VIDEO, 1,
     v4l2_ctrl_g_ctrl(itv->cxhdl.video_mute) |
     (v4l2_ctrl_g_ctrl(itv->cxhdl.video_mute_yuv) << 8));
  }

  ivtv_unmute(itv);
 }

 v4l2_fh_del(fh);
 v4l2_fh_exit(fh);


 if (s->fh != &id->fh)
  goto close_done;



 if (s->type >= IVTV_DEC_STREAM_TYPE_MPG) {
  struct ivtv_stream *s_vout = &itv->streams[IVTV_DEC_STREAM_TYPE_VOUT];

  ivtv_stop_decoding(id, V4L2_DEC_CMD_STOP_TO_BLACK | V4L2_DEC_CMD_STOP_IMMEDIATELY, 0);



  if (itv->output_mode == OUT_NONE && !test_bit(IVTV_F_S_APPL_IO, &s_vout->s_flags)) {

   ivtv_disable_cc(itv);
  }
 } else {
  ivtv_stop_capture(id, 0);
 }
close_done:
 kfree(id);
 mutex_unlock(&itv->serialize_lock);
 return 0;
}
