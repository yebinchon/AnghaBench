
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int index; int pixelformat; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_PIX_FMT_BGR32 ;
 int V4L2_PIX_FMT_RGB24 ;
 int V4L2_PIX_FMT_YUYV ;

__attribute__((used)) static int cobalt_enum_fmt_vid_cap(struct file *file, void *priv_fh,
  struct v4l2_fmtdesc *f)
{
 switch (f->index) {
 case 0:
  f->pixelformat = V4L2_PIX_FMT_YUYV;
  break;
 case 1:
  f->pixelformat = V4L2_PIX_FMT_RGB24;
  break;
 case 2:
  f->pixelformat = V4L2_PIX_FMT_BGR32;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
