
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;
struct camss_video {struct v4l2_format active_fmt; int vb2_q; } ;


 int EBUSY ;
 int __video_try_fmt (struct camss_video*,struct v4l2_format*) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct camss_video* video_drvdata (struct file*) ;

__attribute__((used)) static int video_s_fmt(struct file *file, void *fh, struct v4l2_format *f)
{
 struct camss_video *video = video_drvdata(file);
 int ret;

 if (vb2_is_busy(&video->vb2_q))
  return -EBUSY;

 ret = __video_try_fmt(video, f);
 if (ret < 0)
  return ret;

 video->active_fmt = *f;

 return 0;
}
