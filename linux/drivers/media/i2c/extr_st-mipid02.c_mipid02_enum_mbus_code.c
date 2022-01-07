
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {int pad; size_t index; int code; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int code; } ;
struct mipid02_dev {TYPE_1__ fmt; } ;


 size_t ARRAY_SIZE (int *) ;
 int EINVAL ;


 int * mipid02_supported_fmt_codes ;
 int serial_to_parallel_code (int ) ;
 struct mipid02_dev* to_mipid02_dev (struct v4l2_subdev*) ;

__attribute__((used)) static int mipid02_enum_mbus_code(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_mbus_code_enum *code)
{
 struct mipid02_dev *bridge = to_mipid02_dev(sd);
 int ret = 0;

 switch (code->pad) {
 case 129:
  if (code->index >= ARRAY_SIZE(mipid02_supported_fmt_codes))
   ret = -EINVAL;
  else
   code->code = mipid02_supported_fmt_codes[code->index];
  break;
 case 128:
  if (code->index == 0)
   code->code = serial_to_parallel_code(bridge->fmt.code);
  else
   ret = -EINVAL;
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
