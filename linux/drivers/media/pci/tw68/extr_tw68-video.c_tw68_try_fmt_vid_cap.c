
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int field; unsigned int height; int width; int bytesperline; int sizeimage; int colorspace; int pixelformat; } ;
struct TYPE_6__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct tw68_format {int depth; } ;
struct tw68_dev {TYPE_1__* tvnorm; } ;
struct file {int dummy; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_4__ {int id; } ;


 int EINVAL ;
 int V4L2_COLORSPACE_SMPTE170M ;





 int V4L2_STD_525_60 ;
 struct tw68_format* format_by_fourcc (int ) ;
 struct tw68_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int tw68_try_fmt_vid_cap(struct file *file, void *priv,
      struct v4l2_format *f)
{
 struct tw68_dev *dev = video_drvdata(file);
 const struct tw68_format *fmt;
 enum v4l2_field field;
 unsigned int maxh;

 fmt = format_by_fourcc(f->fmt.pix.pixelformat);
 if (((void*)0) == fmt)
  return -EINVAL;

 field = f->fmt.pix.field;
 maxh = (dev->tvnorm->id & V4L2_STD_525_60) ? 480 : 576;

 switch (field) {
 case 128:
 case 132:
  break;
 case 131:
 case 130:
 case 129:
  maxh = maxh * 2;
  break;
 default:
  field = (f->fmt.pix.height > maxh / 2)
   ? 131
   : 132;
  break;
 }

 f->fmt.pix.field = field;
 if (f->fmt.pix.width < 48)
  f->fmt.pix.width = 48;
 if (f->fmt.pix.height < 32)
  f->fmt.pix.height = 32;
 if (f->fmt.pix.width > 720)
  f->fmt.pix.width = 720;
 if (f->fmt.pix.height > maxh)
  f->fmt.pix.height = maxh;
 f->fmt.pix.width &= ~0x03;
 f->fmt.pix.bytesperline =
  (f->fmt.pix.width * (fmt->depth)) >> 3;
 f->fmt.pix.sizeimage =
  f->fmt.pix.height * f->fmt.pix.bytesperline;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
 return 0;
}
