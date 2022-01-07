
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_dv_timings {int bt; int type; } ;
struct file {int f_flags; } ;
struct aspeed_video {scalar_t__ v4l2_input_status; int detected_timings; int flags; int wait; } ;


 int EAGAIN ;
 int EINTR ;
 int ENOLINK ;
 int O_NONBLOCK ;
 int V4L2_DV_BT_656_1120 ;
 int VIDEO_RES_CHANGE ;
 scalar_t__ test_bit (int ,int *) ;
 struct aspeed_video* video_drvdata (struct file*) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int aspeed_video_query_dv_timings(struct file *file, void *fh,
      struct v4l2_dv_timings *timings)
{
 int rc;
 struct aspeed_video *video = video_drvdata(file);






 if (file->f_flags & O_NONBLOCK) {
  if (test_bit(VIDEO_RES_CHANGE, &video->flags))
   return -EAGAIN;
 } else {
  rc = wait_event_interruptible(video->wait,
           !test_bit(VIDEO_RES_CHANGE,
       &video->flags));
  if (rc)
   return -EINTR;
 }

 timings->type = V4L2_DV_BT_656_1120;
 timings->bt = video->detected_timings;

 return video->v4l2_input_status ? -ENOLINK : 0;
}
