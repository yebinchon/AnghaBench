
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ v4l2_dev; } ;
struct cx18_stream {scalar_t__ handle; TYPE_1__ video_dev; } ;
struct cx18 {struct cx18_stream* streams; } ;


 scalar_t__ CX18_INVALID_TASK_HANDLE ;
 int CX18_MAX_STREAMS ;

u32 cx18_find_handle(struct cx18 *cx)
{
 int i;


 for (i = 0; i < CX18_MAX_STREAMS; i++) {
  struct cx18_stream *s = &cx->streams[i];

  if (s->video_dev.v4l2_dev && (s->handle != CX18_INVALID_TASK_HANDLE))
   return s->handle;
 }
 return CX18_INVALID_TASK_HANDLE;
}
