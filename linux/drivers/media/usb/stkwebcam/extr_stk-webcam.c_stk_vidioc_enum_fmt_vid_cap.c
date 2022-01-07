
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int index; int pixelformat; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_PIX_FMT_RGB565 ;
 int V4L2_PIX_FMT_RGB565X ;
 int V4L2_PIX_FMT_SBGGR8 ;
 int V4L2_PIX_FMT_UYVY ;
 int V4L2_PIX_FMT_YUYV ;

__attribute__((used)) static int stk_vidioc_enum_fmt_vid_cap(struct file *filp,
  void *priv, struct v4l2_fmtdesc *fmtd)
{
 switch (fmtd->index) {
 case 0:
  fmtd->pixelformat = V4L2_PIX_FMT_RGB565;
  break;
 case 1:
  fmtd->pixelformat = V4L2_PIX_FMT_RGB565X;
  break;
 case 2:
  fmtd->pixelformat = V4L2_PIX_FMT_UYVY;
  break;
 case 3:
  fmtd->pixelformat = V4L2_PIX_FMT_SBGGR8;
  break;
 case 4:
  fmtd->pixelformat = V4L2_PIX_FMT_YUYV;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
