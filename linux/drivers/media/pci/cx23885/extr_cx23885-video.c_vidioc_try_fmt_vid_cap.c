
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int field; unsigned int height; int width; int bytesperline; int sizeimage; int colorspace; int pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct cx23885_fmt {int depth; } ;
struct cx23885_dev {int tvnorm; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 int EINVAL ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_ANY ;





 struct cx23885_fmt* format_by_fourcc (int ) ;
 unsigned int norm_maxh (int ) ;
 int v4l_bound_align_image (int*,int,unsigned int,int,unsigned int*,int,unsigned int,int ,int ) ;
 struct cx23885_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
 struct v4l2_format *f)
{
 struct cx23885_dev *dev = video_drvdata(file);
 struct cx23885_fmt *fmt;
 enum v4l2_field field;
 unsigned int maxw, maxh;

 fmt = format_by_fourcc(f->fmt.pix.pixelformat);
 if (((void*)0) == fmt)
  return -EINVAL;

 field = f->fmt.pix.field;
 maxw = 720;
 maxh = norm_maxh(dev->tvnorm);

 if (V4L2_FIELD_ANY == field) {
  field = (f->fmt.pix.height > maxh/2)
   ? 131
   : 132;
 }

 switch (field) {
 case 128:
 case 132:
  maxh = maxh / 2;
  break;
 case 131:
 case 129:
 case 130:
  break;
 default:
  field = 131;
  break;
 }

 f->fmt.pix.field = field;
 v4l_bound_align_image(&f->fmt.pix.width, 48, maxw, 2,
         &f->fmt.pix.height, 32, maxh, 0, 0);
 f->fmt.pix.bytesperline =
  (f->fmt.pix.width * fmt->depth) >> 3;
 f->fmt.pix.sizeimage =
  f->fmt.pix.height * f->fmt.pix.bytesperline;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;

 return 0;
}
