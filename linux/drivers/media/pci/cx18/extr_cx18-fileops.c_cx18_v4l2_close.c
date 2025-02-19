
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fh {int dummy; } ;
struct file {struct v4l2_fh* private_data; } ;
struct cx18_stream {scalar_t__ id; int handle; int name; } ;
struct cx18_open_id {size_t type; scalar_t__ open_id; struct cx18* cx; } ;
struct TYPE_2__ {int video_mute_yuv; int video_mute; } ;
struct cx18 {int serialize_lock; TYPE_1__ cxhdl; int ana_capturing; int std; int i_flags; struct cx18_stream* streams; } ;


 int CX18_CPU_SET_VIDEO_MUTE ;
 int CX18_DEBUG_IOCTL (char*,int ) ;
 size_t CX18_ENC_STREAM_TYPE_RAD ;
 int CX18_F_I_RADIO_USER ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int cx18_audio_set_io (struct cx18*) ;
 int cx18_call_all (struct cx18*,int ,int ,int ) ;
 int cx18_mute (struct cx18*) ;
 int cx18_stop_capture (struct cx18_open_id*,int ) ;
 int cx18_unmute (struct cx18*) ;
 int cx18_vapi (struct cx18*,int ,int,int ,int) ;
 struct cx18_open_id* fh2id (struct v4l2_fh*) ;
 int kfree (struct cx18_open_id*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_std ;
 int v4l2_ctrl_g_ctrl (int ) ;
 int v4l2_fh_del (struct v4l2_fh*) ;
 int v4l2_fh_exit (struct v4l2_fh*) ;
 scalar_t__ v4l2_fh_is_singular_file (struct file*) ;
 int video ;

int cx18_v4l2_close(struct file *filp)
{
 struct v4l2_fh *fh = filp->private_data;
 struct cx18_open_id *id = fh2id(fh);
 struct cx18 *cx = id->cx;
 struct cx18_stream *s = &cx->streams[id->type];

 CX18_DEBUG_IOCTL("close() of %s\n", s->name);

 mutex_lock(&cx->serialize_lock);

 if (id->type == CX18_ENC_STREAM_TYPE_RAD &&
   v4l2_fh_is_singular_file(filp)) {

  cx18_mute(cx);

  clear_bit(CX18_F_I_RADIO_USER, &cx->i_flags);

  cx18_call_all(cx, video, s_std, cx->std);

  cx18_audio_set_io(cx);
  if (atomic_read(&cx->ana_capturing) > 0) {

   cx18_vapi(cx, CX18_CPU_SET_VIDEO_MUTE, 2, s->handle,
       (v4l2_ctrl_g_ctrl(cx->cxhdl.video_mute) |
       (v4l2_ctrl_g_ctrl(cx->cxhdl.video_mute_yuv) << 8)));
  }

  cx18_unmute(cx);
 }

 v4l2_fh_del(fh);
 v4l2_fh_exit(fh);


 if (s->id == id->open_id)
  cx18_stop_capture(id, 0);
 kfree(id);
 mutex_unlock(&cx->serialize_lock);
 return 0;
}
