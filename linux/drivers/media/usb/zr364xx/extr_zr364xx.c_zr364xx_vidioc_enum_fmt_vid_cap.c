
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {scalar_t__ index; int pixelformat; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int fourcc; } ;


 int EINVAL ;
 TYPE_1__* formats ;

__attribute__((used)) static int zr364xx_vidioc_enum_fmt_vid_cap(struct file *file,
           void *priv, struct v4l2_fmtdesc *f)
{
 if (f->index > 0)
  return -EINVAL;
 f->pixelformat = formats[0].fourcc;
 return 0;
}
