
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * v4l2_dev; } ;
struct ivtv_stream {int s_flags; TYPE_1__ vdev; } ;
struct ivtv {struct ivtv_stream* streams; } ;


 int IVTV_F_S_STREAMING ;
 int IVTV_MAX_STREAMS ;
 int ivtv_stop_v4l2_encode_stream (struct ivtv_stream*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

void ivtv_stop_all_captures(struct ivtv *itv)
{
 int i;

 for (i = IVTV_MAX_STREAMS - 1; i >= 0; i--) {
  struct ivtv_stream *s = &itv->streams[i];

  if (s->vdev.v4l2_dev == ((void*)0))
   continue;
  if (test_bit(IVTV_F_S_STREAMING, &s->s_flags)) {
   ivtv_stop_v4l2_encode_stream(s, 0);
  }
 }
}
