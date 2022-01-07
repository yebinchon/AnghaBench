
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aspeed_video {scalar_t__ flags; int v4l2_input_status; TYPE_1__* srcs; int res_work; } ;
struct TYPE_2__ {scalar_t__ size; } ;


 int V4L2_IN_ST_NO_SIGNAL ;
 int VIDEO_STOPPED ;
 int aspeed_video_free_buf (struct aspeed_video*,TYPE_1__*) ;
 int aspeed_video_off (struct aspeed_video*) ;
 int cancel_delayed_work_sync (int *) ;
 int set_bit (int ,scalar_t__*) ;

__attribute__((used)) static void aspeed_video_stop(struct aspeed_video *video)
{
 set_bit(VIDEO_STOPPED, &video->flags);
 cancel_delayed_work_sync(&video->res_work);

 aspeed_video_off(video);

 if (video->srcs[0].size)
  aspeed_video_free_buf(video, &video->srcs[0]);

 if (video->srcs[1].size)
  aspeed_video_free_buf(video, &video->srcs[1]);

 video->v4l2_input_status = V4L2_IN_ST_NO_SIGNAL;
 video->flags = 0;
}
