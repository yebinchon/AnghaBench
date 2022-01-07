
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {size_t index; int pixelformat; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int fourcc; scalar_t__ planar; } ;


 int EINVAL ;
 size_t FORMATS ;
 TYPE_1__* formats ;
 int pr_err (char*) ;
 scalar_t__ saa7134_no_overlay ;

__attribute__((used)) static int saa7134_enum_fmt_vid_overlay(struct file *file, void *priv,
     struct v4l2_fmtdesc *f)
{
 if (saa7134_no_overlay > 0) {
  pr_err("V4L2_BUF_TYPE_VIDEO_OVERLAY: no_overlay\n");
  return -EINVAL;
 }

 if ((f->index >= FORMATS) || formats[f->index].planar)
  return -EINVAL;

 f->pixelformat = formats[f->index].fourcc;

 return 0;
}
