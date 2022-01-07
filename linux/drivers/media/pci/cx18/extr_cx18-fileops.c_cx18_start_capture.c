
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18_stream {scalar_t__ type; int s_flags; int name; int handle; } ;
struct cx18_open_id {size_t type; struct cx18* cx; } ;
struct cx18 {int i_flags; struct cx18_stream* streams; } ;


 int CX18_CPU_CAPTURE_PAUSE ;
 int CX18_DEBUG_INFO (char*) ;
 int CX18_DEBUG_WARN (char*,...) ;
 size_t CX18_ENC_STREAM_TYPE_IDX ;
 scalar_t__ CX18_ENC_STREAM_TYPE_MPG ;
 scalar_t__ CX18_ENC_STREAM_TYPE_RAD ;
 size_t CX18_ENC_STREAM_TYPE_VBI ;
 int CX18_F_I_ENC_PAUSED ;
 int CX18_F_S_APPL_IO ;
 int CX18_F_S_INTERNAL_USE ;
 int CX18_F_S_STREAMING ;
 int CX18_F_S_STREAMOFF ;
 int EBUSY ;
 int EIO ;
 int EPERM ;
 int clear_bit (int ,int *) ;
 scalar_t__ cx18_claim_stream (struct cx18_open_id*,scalar_t__) ;
 int cx18_release_stream (struct cx18_stream*) ;
 scalar_t__ cx18_start_v4l2_encode_stream (struct cx18_stream*) ;
 int cx18_stop_v4l2_encode_stream (struct cx18_stream*,int ) ;
 int cx18_vapi (struct cx18*,int ,int,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int cx18_start_capture(struct cx18_open_id *id)
{
 struct cx18 *cx = id->cx;
 struct cx18_stream *s = &cx->streams[id->type];
 struct cx18_stream *s_vbi;
 struct cx18_stream *s_idx;

 if (s->type == CX18_ENC_STREAM_TYPE_RAD) {

  return -EPERM;
 }


 if (cx18_claim_stream(id, s->type))
  return -EBUSY;



 if (test_bit(CX18_F_S_STREAMOFF, &s->s_flags) ||
     test_and_set_bit(CX18_F_S_STREAMING, &s->s_flags)) {
  set_bit(CX18_F_S_APPL_IO, &s->s_flags);
  return 0;
 }


 s_vbi = &cx->streams[CX18_ENC_STREAM_TYPE_VBI];
 s_idx = &cx->streams[CX18_ENC_STREAM_TYPE_IDX];
 if (s->type == CX18_ENC_STREAM_TYPE_MPG) {





  if (test_bit(CX18_F_S_INTERNAL_USE, &s_idx->s_flags) &&
      !test_and_set_bit(CX18_F_S_STREAMING, &s_idx->s_flags)) {
   if (cx18_start_v4l2_encode_stream(s_idx)) {
    CX18_DEBUG_WARN("IDX capture start failed\n");
    clear_bit(CX18_F_S_STREAMING, &s_idx->s_flags);
    goto start_failed;
   }
   CX18_DEBUG_INFO("IDX capture started\n");
  }
  if (test_bit(CX18_F_S_INTERNAL_USE, &s_vbi->s_flags) &&
      !test_and_set_bit(CX18_F_S_STREAMING, &s_vbi->s_flags)) {
   if (cx18_start_v4l2_encode_stream(s_vbi)) {
    CX18_DEBUG_WARN("VBI capture start failed\n");
    clear_bit(CX18_F_S_STREAMING, &s_vbi->s_flags);
    goto start_failed;
   }
   CX18_DEBUG_INFO("VBI insertion started\n");
  }
 }


 if (!cx18_start_v4l2_encode_stream(s)) {

  set_bit(CX18_F_S_APPL_IO, &s->s_flags);

  if (test_and_clear_bit(CX18_F_I_ENC_PAUSED, &cx->i_flags))
   cx18_vapi(cx, CX18_CPU_CAPTURE_PAUSE, 1, s->handle);
  return 0;
 }

start_failed:
 CX18_DEBUG_WARN("Failed to start capturing for stream %s\n", s->name);






 if (s->type == CX18_ENC_STREAM_TYPE_MPG) {

  if (test_bit(CX18_F_S_STREAMING, &s_idx->s_flags)) {
   cx18_stop_v4l2_encode_stream(s_idx, 0);
   clear_bit(CX18_F_S_STREAMING, &s_idx->s_flags);
  }

  if (test_bit(CX18_F_S_STREAMING, &s_vbi->s_flags) &&
      !test_bit(CX18_F_S_APPL_IO, &s_vbi->s_flags)) {
   cx18_stop_v4l2_encode_stream(s_vbi, 0);
   clear_bit(CX18_F_S_STREAMING, &s_vbi->s_flags);
  }
 }
 clear_bit(CX18_F_S_STREAMING, &s->s_flags);
 cx18_release_stream(s);
 return -EIO;
}
