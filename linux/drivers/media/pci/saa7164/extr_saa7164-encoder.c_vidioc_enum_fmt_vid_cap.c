
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {scalar_t__ index; int pixelformat; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_PIX_FMT_MPEG ;

__attribute__((used)) static int vidioc_enum_fmt_vid_cap(struct file *file, void *priv,
 struct v4l2_fmtdesc *f)
{
 if (f->index != 0)
  return -EINVAL;

 f->pixelformat = V4L2_PIX_FMT_MPEG;

 return 0;
}
