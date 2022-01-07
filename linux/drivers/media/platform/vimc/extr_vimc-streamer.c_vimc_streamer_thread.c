
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vimc_stream {int pipe_size; TYPE_1__** ved_pipeline; } ;
struct TYPE_2__ {int * (* process_frame ) (TYPE_1__*,int *) ;} ;


 int HZ ;
 scalar_t__ IS_ERR (int *) ;
 int TASK_UNINTERRUPTIBLE ;
 scalar_t__ kthread_should_stop () ;
 int schedule_timeout (int) ;
 int set_current_state (int ) ;
 int set_freezable () ;
 int * stub1 (TYPE_1__*,int *) ;
 int try_to_freeze () ;

__attribute__((used)) static int vimc_streamer_thread(void *data)
{
 struct vimc_stream *stream = data;
 u8 *frame = ((void*)0);
 int i;

 set_freezable();

 for (;;) {
  try_to_freeze();
  if (kthread_should_stop())
   break;

  for (i = stream->pipe_size - 1; i >= 0; i--) {
   frame = stream->ved_pipeline[i]->process_frame(
     stream->ved_pipeline[i], frame);
   if (!frame || IS_ERR(frame))
    break;
  }

  set_current_state(TASK_UNINTERRUPTIBLE);
  schedule_timeout(HZ / 60);
 }

 return 0;
}
