
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
struct cx88_core {int tvnorm; } ;
struct cx8800_fmt {int depth; } ;
struct cx8800_dev {struct cx88_core* core; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 int EINVAL ;
 int V4L2_COLORSPACE_SMPTE170M ;

 scalar_t__ V4L2_FIELD_HAS_T_OR_B (int) ;




 struct cx8800_fmt* format_by_fourcc (int ) ;
 unsigned int norm_maxh (int ) ;
 unsigned int norm_maxw (int ) ;
 int v4l_bound_align_image (int*,int,unsigned int,int,unsigned int*,int,unsigned int,int ,int ) ;
 struct cx8800_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
      struct v4l2_format *f)
{
 struct cx8800_dev *dev = video_drvdata(file);
 struct cx88_core *core = dev->core;
 const struct cx8800_fmt *fmt;
 enum v4l2_field field;
 unsigned int maxw, maxh;

 fmt = format_by_fourcc(f->fmt.pix.pixelformat);
 if (!fmt)
  return -EINVAL;

 maxw = norm_maxw(core->tvnorm);
 maxh = norm_maxh(core->tvnorm);

 field = f->fmt.pix.field;

 switch (field) {
 case 128:
 case 132:
 case 131:
 case 130:
 case 129:
  break;
 default:
  field = (f->fmt.pix.height > maxh / 2)
   ? 131
   : 132;
  break;
 }
 if (V4L2_FIELD_HAS_T_OR_B(field))
  maxh /= 2;

 v4l_bound_align_image(&f->fmt.pix.width, 48, maxw, 2,
         &f->fmt.pix.height, 32, maxh, 0, 0);
 f->fmt.pix.field = field;
 f->fmt.pix.bytesperline =
  (f->fmt.pix.width * fmt->depth) >> 3;
 f->fmt.pix.sizeimage =
  f->fmt.pix.height * f->fmt.pix.bytesperline;
 f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;

 return 0;
}
