
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {scalar_t__ pad; size_t index; int code; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int code; } ;
struct isp_ccp2_device {int dummy; } ;


 size_t ARRAY_SIZE (int *) ;
 scalar_t__ CCP2_PAD_SINK ;
 int EINVAL ;
 struct v4l2_mbus_framefmt* __ccp2_get_format (struct isp_ccp2_device*,struct v4l2_subdev_pad_config*,scalar_t__,int ) ;
 int * ccp2_fmts ;
 struct isp_ccp2_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ccp2_enum_mbus_code(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_mbus_code_enum *code)
{
 struct isp_ccp2_device *ccp2 = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *format;

 if (code->pad == CCP2_PAD_SINK) {
  if (code->index >= ARRAY_SIZE(ccp2_fmts))
   return -EINVAL;

  code->code = ccp2_fmts[code->index];
 } else {
  if (code->index != 0)
   return -EINVAL;

  format = __ccp2_get_format(ccp2, cfg, CCP2_PAD_SINK,
           code->which);
  code->code = format->code;
 }

 return 0;
}
