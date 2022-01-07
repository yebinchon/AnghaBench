
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_stream {int s_flags; int * fh; int name; } ;
struct ivtv_open_id {size_t type; struct ivtv* itv; } ;
struct ivtv {struct ivtv_stream* streams; } ;


 int IVTV_DEBUG_FILE (char*,int ) ;
 int IVTV_DEBUG_INFO (char*) ;
 size_t IVTV_DEC_STREAM_TYPE_VBI ;
 size_t IVTV_ENC_STREAM_TYPE_MPG ;
 size_t IVTV_ENC_STREAM_TYPE_VBI ;
 int IVTV_F_S_APPL_IO ;
 int IVTV_F_S_INTERNAL_USE ;
 int IVTV_F_S_STREAMING ;
 int IVTV_F_S_STREAMOFF ;
 int clear_bit (int ,int *) ;
 int ivtv_release_stream (struct ivtv_stream*) ;
 int ivtv_stop_v4l2_encode_stream (struct ivtv_stream*,int) ;
 scalar_t__ test_bit (int ,int *) ;

void ivtv_stop_capture(struct ivtv_open_id *id, int gop_end)
{
 struct ivtv *itv = id->itv;
 struct ivtv_stream *s = &itv->streams[id->type];

 IVTV_DEBUG_FILE("close() of %s\n", s->name);




 if (test_bit(IVTV_F_S_STREAMING, &s->s_flags)) {
  struct ivtv_stream *s_vbi = &itv->streams[IVTV_ENC_STREAM_TYPE_VBI];

  IVTV_DEBUG_INFO("close stopping capture\n");


  if (id->type == IVTV_ENC_STREAM_TYPE_MPG &&
      test_bit(IVTV_F_S_STREAMING, &s_vbi->s_flags) &&
      !test_bit(IVTV_F_S_APPL_IO, &s_vbi->s_flags)) {
   IVTV_DEBUG_INFO("close stopping embedded VBI capture\n");
   ivtv_stop_v4l2_encode_stream(s_vbi, 0);
  }
  if ((id->type == IVTV_DEC_STREAM_TYPE_VBI ||
       id->type == IVTV_ENC_STREAM_TYPE_VBI) &&
      test_bit(IVTV_F_S_INTERNAL_USE, &s->s_flags)) {

   s->fh = ((void*)0);
  }
  else {
   ivtv_stop_v4l2_encode_stream(s, gop_end);
  }
 }
 if (!gop_end) {
  clear_bit(IVTV_F_S_APPL_IO, &s->s_flags);
  clear_bit(IVTV_F_S_STREAMOFF, &s->s_flags);
  ivtv_release_stream(s);
 }
}
