
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vim2m_fmt {int depth; } ;
struct TYPE_3__ {int height; int width; int bytesperline; int sizeimage; int field; int pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;


 int MAX_H ;
 int MAX_W ;
 int MIN_H ;
 int MIN_W ;
 int V4L2_FIELD_NONE ;
 int get_alignment (int ,int*,int*) ;

__attribute__((used)) static int vidioc_try_fmt(struct v4l2_format *f, struct vim2m_fmt *fmt)
{
 int walign, halign;




 if (f->fmt.pix.height < MIN_H)
  f->fmt.pix.height = MIN_H;
 else if (f->fmt.pix.height > MAX_H)
  f->fmt.pix.height = MAX_H;

 if (f->fmt.pix.width < MIN_W)
  f->fmt.pix.width = MIN_W;
 else if (f->fmt.pix.width > MAX_W)
  f->fmt.pix.width = MAX_W;

 get_alignment(f->fmt.pix.pixelformat, &walign, &halign);
 f->fmt.pix.width &= ~(walign - 1);
 f->fmt.pix.height &= ~(halign - 1);
 f->fmt.pix.bytesperline = (f->fmt.pix.width * fmt->depth) >> 3;
 f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;
 f->fmt.pix.field = V4L2_FIELD_NONE;

 return 0;
}
