
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int field; int height; int pixelformat; int bytesperline; int sizeimage; int width; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct coda_dev {int dummy; } ;
struct coda_ctx {struct coda_dev* dev; } ;
struct coda_codec {int dummy; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 int BUG () ;
 int EINVAL ;
 int H_ALIGN ;
 int MIN_H ;
 int MIN_W ;
 int S_ALIGN ;
 int V4L2_FIELD_ANY ;
 int V4L2_FIELD_NONE ;
 int W_ALIGN ;
 int coda_estimate_sizeimage (struct coda_ctx*,int,int ,int) ;
 int coda_get_max_dimensions (struct coda_dev*,struct coda_codec const*,unsigned int*,unsigned int*) ;
 int round_up (int ,int) ;
 int v4l_bound_align_image (int *,int ,unsigned int,int ,int*,int ,unsigned int,int ,int ) ;

__attribute__((used)) static int coda_try_fmt(struct coda_ctx *ctx, const struct coda_codec *codec,
   struct v4l2_format *f)
{
 struct coda_dev *dev = ctx->dev;
 unsigned int max_w, max_h;
 enum v4l2_field field;

 field = f->fmt.pix.field;
 if (field == V4L2_FIELD_ANY)
  field = V4L2_FIELD_NONE;
 else if (V4L2_FIELD_NONE != field)
  return -EINVAL;



 f->fmt.pix.field = field;

 coda_get_max_dimensions(dev, codec, &max_w, &max_h);
 v4l_bound_align_image(&f->fmt.pix.width, MIN_W, max_w, W_ALIGN,
         &f->fmt.pix.height, MIN_H, max_h, H_ALIGN,
         S_ALIGN);

 switch (f->fmt.pix.pixelformat) {
 case 132:
 case 131:
 case 128:




  f->fmt.pix.bytesperline = round_up(f->fmt.pix.width, 16);
  f->fmt.pix.sizeimage = f->fmt.pix.bytesperline *
     f->fmt.pix.height * 3 / 2;
  break;
 case 129:
  f->fmt.pix.bytesperline = round_up(f->fmt.pix.width, 16) * 2;
  f->fmt.pix.sizeimage = f->fmt.pix.bytesperline *
     f->fmt.pix.height;
  break;
 case 130:
  f->fmt.pix.bytesperline = round_up(f->fmt.pix.width, 16);
  f->fmt.pix.sizeimage = f->fmt.pix.bytesperline *
     f->fmt.pix.height * 2;
  break;
 case 135:
 case 136:
 case 133:
 case 134:
  f->fmt.pix.bytesperline = 0;
  f->fmt.pix.sizeimage = coda_estimate_sizeimage(ctx,
       f->fmt.pix.sizeimage,
       f->fmt.pix.width,
       f->fmt.pix.height);
  break;
 default:
  BUG();
 }

 return 0;
}
