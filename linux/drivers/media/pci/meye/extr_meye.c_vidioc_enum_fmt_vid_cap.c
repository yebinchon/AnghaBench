
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int index; int pixelformat; scalar_t__ flags; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_PIX_FMT_MJPEG ;
 int V4L2_PIX_FMT_YUYV ;

__attribute__((used)) static int vidioc_enum_fmt_vid_cap(struct file *file, void *fh,
    struct v4l2_fmtdesc *f)
{
 if (f->index > 1)
  return -EINVAL;

 if (f->index == 0) {

  f->flags = 0;
  f->pixelformat = V4L2_PIX_FMT_YUYV;
 } else {

  f->pixelformat = V4L2_PIX_FMT_MJPEG;
 }

 return 0;
}
