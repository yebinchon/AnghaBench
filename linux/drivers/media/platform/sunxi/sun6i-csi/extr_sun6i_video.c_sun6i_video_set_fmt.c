
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct sun6i_video {struct v4l2_format fmt; } ;


 int sun6i_video_try_fmt (struct sun6i_video*,struct v4l2_format*) ;

__attribute__((used)) static int sun6i_video_set_fmt(struct sun6i_video *video, struct v4l2_format *f)
{
 int ret;

 ret = sun6i_video_try_fmt(video, f);
 if (ret)
  return ret;

 video->fmt = *f;

 return 0;
}
