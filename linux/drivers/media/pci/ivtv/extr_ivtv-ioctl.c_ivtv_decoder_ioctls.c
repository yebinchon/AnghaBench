
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned char vsync_field; } ;
struct video_event {int flags; int type; TYPE_3__ u; int cmd; } ;
struct v4l2_decoder_cmd {int flags; int type; TYPE_3__ u; int cmd; } ;
struct ivtv_stream {int type; int dma_pts; } ;
struct ivtv_open_id {size_t type; int yuv_frames; struct ivtv* itv; } ;
struct ivtv_dma_frame {int * y_source; int type; } ;
struct TYPE_4__ {int lace_mode; } ;
struct ivtv {int v4l2_cap; unsigned long speed_mute_audio; int ctrl_audio_multilingual_playback; int ctrl_audio_playback; int serialize_lock; int event_waitq; int i_flags; TYPE_1__ yuv_info; int output_mode; struct ivtv_stream* streams; } ;
struct file {int f_flags; int private_data; } ;
struct TYPE_5__ {unsigned char vsync_field; } ;
struct compat_video_event {TYPE_2__ u; } ;
typedef int s64 ;
typedef int dc ;





 unsigned long AUDIO_STEREO_SWAPPED ;
 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int EBUSY ;
 int EINTR ;
 int EINVAL ;
 int IVTV_DEBUG_INFO (char*) ;
 int IVTV_DEBUG_IOCTL (char*) ;
 int IVTV_DEC_STREAM_TYPE_MPG ;
 int IVTV_F_I_EV_DEC_STOPPED ;
 int IVTV_F_I_EV_VSYNC ;
 int IVTV_F_I_EV_VSYNC_ENABLED ;
 int IVTV_F_I_EV_VSYNC_FIELD ;


 int IVTV_YUV_MODE_MASK ;
 int IVTV_YUV_MODE_PROGRESSIVE ;
 int OUT_UDMA_YUV ;
 int O_NONBLOCK ;
 int TASK_INTERRUPTIBLE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int V4L2_CAP_VIDEO_OUTPUT ;
 int V4L2_DEC_CMD_PAUSE ;
 int V4L2_DEC_CMD_RESUME ;
 int V4L2_DEC_CMD_START ;
 int V4L2_DEC_CMD_STOP ;
 int V4L2_DEC_CMD_STOP_IMMEDIATELY ;
 int V4L2_DEC_CMD_STOP_TO_BLACK ;


 int VIDEO_EVENT_DECODER_STOPPED ;
 int VIDEO_EVENT_VSYNC ;







 unsigned long VIDEO_SOURCE_DEMUX ;


 unsigned char VIDEO_VSYNC_FIELD_EVEN ;
 unsigned char VIDEO_VSYNC_FIELD_ODD ;
 unsigned char VIDEO_VSYNC_FIELD_PROGRESSIVE ;
 int current ;
 struct ivtv_open_id* fh2id (int ) ;
 int finish_wait (int *,int *) ;
 int ivtv_g_pts_frame (struct ivtv*,int *,int *) ;
 int ivtv_passthrough_mode (struct ivtv*,int) ;
 int ivtv_release_stream (struct ivtv_stream*) ;
 int ivtv_set_output_mode (struct ivtv*,int ) ;
 int ivtv_start_decoding (struct ivtv_open_id*,size_t) ;
 int ivtv_video_command (struct ivtv*,struct ivtv_open_id*,struct video_event*,int) ;
 int ivtv_yuv_prep_frame (struct ivtv*,struct ivtv_dma_frame*) ;
 int memset (struct video_event*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int set_bit (int ,int *) ;
 int signal_pending (int ) ;
 int test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int v4l2_ctrl_s_ctrl (int ,unsigned long) ;
 int wait ;
 int warn_deprecated_ioctl (char*) ;

__attribute__((used)) static int ivtv_decoder_ioctls(struct file *filp, unsigned int cmd, void *arg)
{
 struct ivtv_open_id *id = fh2id(filp->private_data);
 struct ivtv *itv = id->itv;
 struct ivtv_stream *s = &itv->streams[id->type];





 switch (cmd) {
 case 140: {
  struct ivtv_dma_frame *args = arg;

  IVTV_DEBUG_IOCTL("IVTV_IOC_DMA_FRAME\n");
  if (!(itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT))
   return -EINVAL;
  if (args->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
   return -EINVAL;
  if (itv->output_mode == OUT_UDMA_YUV && args->y_source == ((void*)0))
   return 0;
  if (ivtv_start_decoding(id, id->type)) {
   return -EBUSY;
  }
  if (ivtv_set_output_mode(itv, OUT_UDMA_YUV) != OUT_UDMA_YUV) {
   ivtv_release_stream(s);
   return -EBUSY;
  }

  id->yuv_frames = 1;
  if (args->y_source == ((void*)0))
   return 0;
  return ivtv_yuv_prep_frame(itv, args);
 }

 case 139:
  IVTV_DEBUG_IOCTL("IVTV_IOC_PASSTHROUGH_MODE\n");
  if (!(itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT))
   return -EINVAL;
  return ivtv_passthrough_mode(itv, *(int *)arg != 0);
 default:
  return -EINVAL;
 }
 return 0;
}
