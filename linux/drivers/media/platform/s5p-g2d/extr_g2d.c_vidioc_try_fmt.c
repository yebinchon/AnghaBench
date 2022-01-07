
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int field; int width; int height; int bytesperline; int sizeimage; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct g2d_fmt {int depth; } ;
struct file {int dummy; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 int EINVAL ;
 int MAX_HEIGHT ;
 int MAX_WIDTH ;
 int V4L2_FIELD_ANY ;
 int V4L2_FIELD_NONE ;
 struct g2d_fmt* find_fmt (struct v4l2_format*) ;

__attribute__((used)) static int vidioc_try_fmt(struct file *file, void *prv, struct v4l2_format *f)
{
 struct g2d_fmt *fmt;
 enum v4l2_field *field;

 fmt = find_fmt(f);
 if (!fmt)
  return -EINVAL;

 field = &f->fmt.pix.field;
 if (*field == V4L2_FIELD_ANY)
  *field = V4L2_FIELD_NONE;
 else if (*field != V4L2_FIELD_NONE)
  return -EINVAL;

 if (f->fmt.pix.width > MAX_WIDTH)
  f->fmt.pix.width = MAX_WIDTH;
 if (f->fmt.pix.height > MAX_HEIGHT)
  f->fmt.pix.height = MAX_HEIGHT;

 if (f->fmt.pix.width < 1)
  f->fmt.pix.width = 1;
 if (f->fmt.pix.height < 1)
  f->fmt.pix.height = 1;

 f->fmt.pix.bytesperline = (f->fmt.pix.width * fmt->depth) >> 3;
 f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;
 return 0;
}
