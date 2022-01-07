
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int pixelformat; scalar_t__ index; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_PIX_FMT_GREY ;

__attribute__((used)) static int dt3155_enum_fmt_vid_cap(struct file *filp,
       void *p, struct v4l2_fmtdesc *f)
{
 if (f->index)
  return -EINVAL;
 f->pixelformat = V4L2_PIX_FMT_GREY;
 return 0;
}
