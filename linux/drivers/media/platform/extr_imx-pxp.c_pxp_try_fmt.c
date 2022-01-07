
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int field; int height; int width; int sizeimage; int bytesperline; } ;
struct TYPE_3__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct pxp_fmt {int dummy; } ;


 int ALIGN_H ;
 int ALIGN_W ;
 int MAX_H ;
 int MAX_W ;
 int MIN_H ;
 int MIN_W ;
 int V4L2_FIELD_NONE ;
 int pxp_bytesperline (struct pxp_fmt*,int ) ;
 int pxp_sizeimage (struct pxp_fmt*,int ,int ) ;
 int v4l_bound_align_image (int *,int ,int ,int ,int *,int ,int ,int ,int ) ;

__attribute__((used)) static int pxp_try_fmt(struct v4l2_format *f, struct pxp_fmt *fmt)
{
 v4l_bound_align_image(&f->fmt.pix.width, MIN_W, MAX_W, ALIGN_W,
         &f->fmt.pix.height, MIN_H, MAX_H, ALIGN_H, 0);

 f->fmt.pix.bytesperline = pxp_bytesperline(fmt, f->fmt.pix.width);
 f->fmt.pix.sizeimage = pxp_sizeimage(fmt, f->fmt.pix.width,
          f->fmt.pix.height);
 f->fmt.pix.field = V4L2_FIELD_NONE;

 return 0;
}
