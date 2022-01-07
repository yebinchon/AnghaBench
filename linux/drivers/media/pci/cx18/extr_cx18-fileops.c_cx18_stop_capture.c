
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18_stream {int id; int s_flags; int name; } ;
struct cx18_open_id {size_t type; struct cx18* cx; } ;
struct cx18 {struct cx18_stream* streams; } ;


 int CX18_DEBUG_INFO (char*) ;
 int CX18_DEBUG_IOCTL (char*,int ) ;
 size_t CX18_ENC_STREAM_TYPE_IDX ;
 size_t CX18_ENC_STREAM_TYPE_MPG ;
 size_t CX18_ENC_STREAM_TYPE_VBI ;
 int CX18_F_S_APPL_IO ;
 int CX18_F_S_INTERNAL_USE ;
 int CX18_F_S_STREAMING ;
 int CX18_F_S_STREAMOFF ;
 int clear_bit (int ,int *) ;
 int cx18_release_stream (struct cx18_stream*) ;
 int cx18_stop_v4l2_encode_stream (struct cx18_stream*,int) ;
 scalar_t__ test_bit (int ,int *) ;

void cx18_stop_capture(struct cx18_open_id *id, int gop_end)
{
 struct cx18 *cx = id->cx;
 struct cx18_stream *s = &cx->streams[id->type];
 struct cx18_stream *s_vbi = &cx->streams[CX18_ENC_STREAM_TYPE_VBI];
 struct cx18_stream *s_idx = &cx->streams[CX18_ENC_STREAM_TYPE_IDX];

 CX18_DEBUG_IOCTL("close() of %s\n", s->name);




 if (test_bit(CX18_F_S_STREAMING, &s->s_flags)) {
  CX18_DEBUG_INFO("close stopping capture\n");
  if (id->type == CX18_ENC_STREAM_TYPE_MPG) {

   if (test_bit(CX18_F_S_STREAMING, &s_vbi->s_flags) &&
       !test_bit(CX18_F_S_APPL_IO, &s_vbi->s_flags)) {
    CX18_DEBUG_INFO("close stopping embedded VBI capture\n");
    cx18_stop_v4l2_encode_stream(s_vbi, 0);
   }
   if (test_bit(CX18_F_S_STREAMING, &s_idx->s_flags)) {
    CX18_DEBUG_INFO("close stopping IDX capture\n");
    cx18_stop_v4l2_encode_stream(s_idx, 0);
   }
  }
  if (id->type == CX18_ENC_STREAM_TYPE_VBI &&
      test_bit(CX18_F_S_INTERNAL_USE, &s->s_flags))

   s->id = -1;
  else
   cx18_stop_v4l2_encode_stream(s, gop_end);
 }
 if (!gop_end) {
  clear_bit(CX18_F_S_APPL_IO, &s->s_flags);
  clear_bit(CX18_F_S_STREAMOFF, &s->s_flags);
  cx18_release_stream(s);
 }
}
