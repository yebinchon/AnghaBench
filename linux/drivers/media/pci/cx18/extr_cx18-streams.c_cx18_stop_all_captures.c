
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18_stream {int s_flags; } ;
struct cx18 {struct cx18_stream* streams; } ;


 int CX18_F_S_STREAMING ;
 int CX18_MAX_STREAMS ;
 int cx18_stop_v4l2_encode_stream (struct cx18_stream*,int ) ;
 int cx18_stream_enabled (struct cx18_stream*) ;
 scalar_t__ test_bit (int ,int *) ;

void cx18_stop_all_captures(struct cx18 *cx)
{
 int i;

 for (i = CX18_MAX_STREAMS - 1; i >= 0; i--) {
  struct cx18_stream *s = &cx->streams[i];

  if (!cx18_stream_enabled(s))
   continue;
  if (test_bit(CX18_F_S_STREAMING, &s->s_flags))
   cx18_stop_v4l2_encode_stream(s, 0);
 }
}
