
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_hsit {scalar_t__ inverse; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {scalar_t__ index; scalar_t__ pad; int code; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 scalar_t__ HSIT_PAD_SINK ;
 scalar_t__ HSIT_PAD_SOURCE ;
 int MEDIA_BUS_FMT_AHSV8888_1X32 ;
 int MEDIA_BUS_FMT_ARGB8888_1X32 ;
 struct vsp1_hsit* to_hsit (struct v4l2_subdev*) ;

__attribute__((used)) static int hsit_enum_mbus_code(struct v4l2_subdev *subdev,
          struct v4l2_subdev_pad_config *cfg,
          struct v4l2_subdev_mbus_code_enum *code)
{
 struct vsp1_hsit *hsit = to_hsit(subdev);

 if (code->index > 0)
  return -EINVAL;

 if ((code->pad == HSIT_PAD_SINK && !hsit->inverse) |
     (code->pad == HSIT_PAD_SOURCE && hsit->inverse))
  code->code = MEDIA_BUS_FMT_ARGB8888_1X32;
 else
  code->code = MEDIA_BUS_FMT_AHSV8888_1X32;

 return 0;
}
