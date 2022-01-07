
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; int height; int bytesperline; int sizeimage; int field; int pixelformat; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int mchip_mode; } ;




 int V4L2_FIELD_NONE ;
 int V4L2_PIX_FMT_MJPEG ;
 int V4L2_PIX_FMT_YUYV ;
 int mchip_hsize () ;
 int mchip_vsize () ;
 TYPE_3__ meye ;

__attribute__((used)) static int vidioc_g_fmt_vid_cap(struct file *file, void *fh,
        struct v4l2_format *f)
{
 switch (meye.mchip_mode) {
 case 128:
 default:
  f->fmt.pix.pixelformat = V4L2_PIX_FMT_YUYV;
  break;
 case 129:
  f->fmt.pix.pixelformat = V4L2_PIX_FMT_MJPEG;
  break;
 }

 f->fmt.pix.field = V4L2_FIELD_NONE;
 f->fmt.pix.width = mchip_hsize();
 f->fmt.pix.height = mchip_vsize();
 f->fmt.pix.bytesperline = f->fmt.pix.width * 2;
 f->fmt.pix.sizeimage = f->fmt.pix.height *
          f->fmt.pix.bytesperline;

 return 0;
}
