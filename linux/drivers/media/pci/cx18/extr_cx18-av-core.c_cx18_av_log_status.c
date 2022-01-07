
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct cx18 {int dummy; } ;


 int log_audio_status (struct cx18*) ;
 int log_video_status (struct cx18*) ;
 struct cx18* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int cx18_av_log_status(struct v4l2_subdev *sd)
{
 struct cx18 *cx = v4l2_get_subdevdata(sd);
 log_video_status(cx);
 log_audio_status(cx);
 return 0;
}
