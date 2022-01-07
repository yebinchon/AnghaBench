
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct sun6i_video {int vb2_vidq; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int sun6i_video_set_fmt (struct sun6i_video*,struct v4l2_format*) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct sun6i_video* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct sun6i_video *video = video_drvdata(file);

 if (vb2_is_busy(&video->vb2_vidq))
  return -EBUSY;

 return sun6i_video_set_fmt(video, f);
}
