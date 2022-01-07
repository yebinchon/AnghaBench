
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int index; int pixelformat; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_PIX_FMT_JPEG ;
 int V4L2_PIX_FMT_MJPEG ;

__attribute__((used)) static int cpia2_enum_fmt_vid_cap(struct file *file, void *fh,
         struct v4l2_fmtdesc *f)
{
 if (f->index > 1)
  return -EINVAL;

 if (f->index == 0)
  f->pixelformat = V4L2_PIX_FMT_MJPEG;
 else
  f->pixelformat = V4L2_PIX_FMT_JPEG;
 return 0;
}
