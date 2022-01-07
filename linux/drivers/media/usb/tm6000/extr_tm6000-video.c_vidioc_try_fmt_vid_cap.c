
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int field; int width; int height; int bytesperline; int sizeimage; int colorspace; int pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct tm6000_fmt {int depth; } ;
struct tm6000_fh {struct tm6000_core* dev; } ;
struct tm6000_core {int width; int height; } ;
struct file {int dummy; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 int EINVAL ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 int dprintk (struct tm6000_core*,int,char*,int ) ;
 struct tm6000_fmt* format_by_fourcc (int ) ;
 int tm6000_get_std_res (struct tm6000_core*) ;

__attribute__((used)) static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
   struct v4l2_format *f)
{
 struct tm6000_core *dev = ((struct tm6000_fh *)priv)->dev;
 struct tm6000_fmt *fmt;
 enum v4l2_field field;

 fmt = format_by_fourcc(f->fmt.pix.pixelformat);
 if (((void*)0) == fmt) {
  dprintk(dev, 2, "Fourcc format (0x%08x) invalid.\n",
   f->fmt.pix.pixelformat);
  return -EINVAL;
 }

 field = f->fmt.pix.field;

 field = V4L2_FIELD_INTERLACED;

 tm6000_get_std_res(dev);

 f->fmt.pix.width = dev->width;
 f->fmt.pix.height = dev->height;

 f->fmt.pix.width &= ~0x01;

 f->fmt.pix.field = field;

 f->fmt.pix.bytesperline =
  (f->fmt.pix.width * fmt->depth) >> 3;
 f->fmt.pix.sizeimage =
  f->fmt.pix.height * f->fmt.pix.bytesperline;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;

 return 0;
}
