
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int pixelformat; scalar_t__ index; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_PIX_FMT_MPEG ;

__attribute__((used)) static int pvr2_enum_fmt_vid_cap(struct file *file, void *priv, struct v4l2_fmtdesc *fd)
{

 if (fd->index)
  return -EINVAL;

 fd->pixelformat = V4L2_PIX_FMT_MPEG;
 return 0;
}
