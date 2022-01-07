
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_stream {scalar_t__ type; int s_flags; int name; } ;
struct ivtv_open_id {size_t type; struct ivtv* itv; } ;
struct ivtv {int i_flags; struct ivtv_stream* streams; } ;


 int CX2341X_ENC_PAUSE_ENCODER ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int IVTV_DEBUG_INFO (char*) ;
 int IVTV_DEBUG_WARN (char*,...) ;
 scalar_t__ IVTV_DEC_STREAM_TYPE_MPG ;
 scalar_t__ IVTV_DEC_STREAM_TYPE_VBI ;
 scalar_t__ IVTV_DEC_STREAM_TYPE_VOUT ;
 scalar_t__ IVTV_DEC_STREAM_TYPE_YUV ;
 scalar_t__ IVTV_ENC_STREAM_TYPE_MPG ;
 scalar_t__ IVTV_ENC_STREAM_TYPE_RAD ;
 size_t IVTV_ENC_STREAM_TYPE_VBI ;
 int IVTV_F_I_ENC_PAUSED ;
 int IVTV_F_S_APPL_IO ;
 int IVTV_F_S_INTERNAL_USE ;
 int IVTV_F_S_STREAMING ;
 int IVTV_F_S_STREAMOFF ;
 int clear_bit (int ,int *) ;
 scalar_t__ ivtv_claim_stream (struct ivtv_open_id*,scalar_t__) ;
 int ivtv_release_stream (struct ivtv_stream*) ;
 scalar_t__ ivtv_start_v4l2_encode_stream (struct ivtv_stream*) ;
 int ivtv_stop_v4l2_encode_stream (struct ivtv_stream*,int ) ;
 int ivtv_vapi (struct ivtv*,int ,int,int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int ivtv_start_capture(struct ivtv_open_id *id)
{
 struct ivtv *itv = id->itv;
 struct ivtv_stream *s = &itv->streams[id->type];
 struct ivtv_stream *s_vbi;

 if (s->type == IVTV_ENC_STREAM_TYPE_RAD ||
     s->type == IVTV_DEC_STREAM_TYPE_MPG ||
     s->type == IVTV_DEC_STREAM_TYPE_YUV ||
     s->type == IVTV_DEC_STREAM_TYPE_VOUT) {

  return -EINVAL;
 }


 if (ivtv_claim_stream(id, s->type))
  return -EBUSY;


 if (s->type == IVTV_DEC_STREAM_TYPE_VBI) {
  set_bit(IVTV_F_S_APPL_IO, &s->s_flags);
  return 0;
 }



 if (test_bit(IVTV_F_S_STREAMOFF, &s->s_flags) || test_and_set_bit(IVTV_F_S_STREAMING, &s->s_flags)) {
  set_bit(IVTV_F_S_APPL_IO, &s->s_flags);
  return 0;
 }


 s_vbi = &itv->streams[IVTV_ENC_STREAM_TYPE_VBI];
 if (s->type == IVTV_ENC_STREAM_TYPE_MPG &&
     test_bit(IVTV_F_S_INTERNAL_USE, &s_vbi->s_flags) &&
     !test_and_set_bit(IVTV_F_S_STREAMING, &s_vbi->s_flags)) {



  if (ivtv_start_v4l2_encode_stream(s_vbi)) {
   IVTV_DEBUG_WARN("VBI capture start failed\n");


   clear_bit(IVTV_F_S_STREAMING, &s_vbi->s_flags);
   clear_bit(IVTV_F_S_STREAMING, &s->s_flags);

   ivtv_release_stream(s);
   return -EIO;
  }
  IVTV_DEBUG_INFO("VBI insertion started\n");
 }


 if (!ivtv_start_v4l2_encode_stream(s)) {

  set_bit(IVTV_F_S_APPL_IO, &s->s_flags);

  if (test_and_clear_bit(IVTV_F_I_ENC_PAUSED, &itv->i_flags))
   ivtv_vapi(itv, CX2341X_ENC_PAUSE_ENCODER, 1, 1);
  return 0;
 }


 IVTV_DEBUG_WARN("Failed to start capturing for stream %s\n", s->name);




 if (s->type == IVTV_ENC_STREAM_TYPE_MPG &&
     test_bit(IVTV_F_S_STREAMING, &s_vbi->s_flags)) {
  ivtv_stop_v4l2_encode_stream(s_vbi, 0);
  clear_bit(IVTV_F_S_STREAMING, &s_vbi->s_flags);
 }
 clear_bit(IVTV_F_S_STREAMING, &s->s_flags);
 ivtv_release_stream(s);
 return -EIO;
}
