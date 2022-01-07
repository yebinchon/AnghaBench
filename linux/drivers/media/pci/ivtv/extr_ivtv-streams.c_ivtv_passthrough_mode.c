
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * v4l2_dev; } ;
struct ivtv_stream {int s_flags; TYPE_1__ vdev; } ;
struct ivtv {scalar_t__ output_mode; int cxhdl; int capturing; int decoding; struct ivtv_stream* streams; } ;


 int CX2341X_DEC_START_PLAYBACK ;
 int CX2341X_DEC_STOP_PLAYBACK ;
 int CX2341X_ENC_START_CAPTURE ;
 int CX2341X_ENC_STOP_CAPTURE ;
 int EBUSY ;
 int EINVAL ;
 int IVTV_DEBUG_INFO (char*) ;
 size_t IVTV_DEC_STREAM_TYPE_YUV ;
 size_t IVTV_ENC_STREAM_TYPE_YUV ;
 int IVTV_F_S_PASSTHROUGH ;
 int IVTV_F_S_STREAMING ;
 scalar_t__ OUT_NONE ;
 scalar_t__ OUT_PASSTHROUGH ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int cx2341x_handler_set_busy (int *,int) ;
 int cx2341x_handler_setup (int *) ;
 scalar_t__ ivtv_set_output_mode (struct ivtv*,scalar_t__) ;
 int ivtv_setup_v4l2_decode_stream (struct ivtv_stream*) ;
 int ivtv_vapi (struct ivtv*,int ,int,int,int,...) ;
 int set_bit (int ,int *) ;

int ivtv_passthrough_mode(struct ivtv *itv, int enable)
{
 struct ivtv_stream *yuv_stream = &itv->streams[IVTV_ENC_STREAM_TYPE_YUV];
 struct ivtv_stream *dec_stream = &itv->streams[IVTV_DEC_STREAM_TYPE_YUV];

 if (yuv_stream->vdev.v4l2_dev == ((void*)0) || dec_stream->vdev.v4l2_dev == ((void*)0))
  return -EINVAL;

 IVTV_DEBUG_INFO("ivtv ioctl: Select passthrough mode\n");



 if (enable) {
  if (itv->output_mode == OUT_PASSTHROUGH) {
   return 0;
  }
  if (ivtv_set_output_mode(itv, OUT_PASSTHROUGH) != OUT_PASSTHROUGH)
   return -EBUSY;


  set_bit(IVTV_F_S_PASSTHROUGH, &dec_stream->s_flags);
  set_bit(IVTV_F_S_STREAMING, &dec_stream->s_flags);


  ivtv_setup_v4l2_decode_stream(dec_stream);


  ivtv_vapi(itv, CX2341X_DEC_START_PLAYBACK, 2, 0, 1);
  atomic_inc(&itv->decoding);


  if (atomic_read(&itv->capturing) == 0) {
   cx2341x_handler_setup(&itv->cxhdl);
   cx2341x_handler_set_busy(&itv->cxhdl, 1);
  }


  ivtv_vapi(itv, CX2341X_ENC_START_CAPTURE, 2, 2, 11);
  atomic_inc(&itv->capturing);
  return 0;
 }

 if (itv->output_mode != OUT_PASSTHROUGH)
  return 0;


 ivtv_vapi(itv, CX2341X_ENC_STOP_CAPTURE, 3, 1, 2, 11);
 ivtv_vapi(itv, CX2341X_DEC_STOP_PLAYBACK, 3, 1, 0, 0);

 atomic_dec(&itv->capturing);
 atomic_dec(&itv->decoding);
 clear_bit(IVTV_F_S_PASSTHROUGH, &dec_stream->s_flags);
 clear_bit(IVTV_F_S_STREAMING, &dec_stream->s_flags);
 itv->output_mode = OUT_NONE;
 if (atomic_read(&itv->capturing) == 0)
  cx2341x_handler_set_busy(&itv->cxhdl, 0);

 return 0;
}
