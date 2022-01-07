
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pixelformat; int bytesperline; int width; int sizeimage; int height; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct deinterlace_fmt {int dummy; } ;





__attribute__((used)) static int vidioc_try_fmt(struct v4l2_format *f, struct deinterlace_fmt *fmt)
{
 switch (f->fmt.pix.pixelformat) {
 case 129:
  f->fmt.pix.bytesperline = f->fmt.pix.width * 3 / 2;
  break;
 case 128:
 default:
  f->fmt.pix.bytesperline = f->fmt.pix.width * 2;
 }
 f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;

 return 0;
}
