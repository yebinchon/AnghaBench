
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {size_t index; int code; scalar_t__ pad; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int mbus_code; } ;


 int EINVAL ;
 size_t N_OV7740_FMTS ;
 TYPE_1__* ov7740_formats ;

__attribute__((used)) static int ov7740_enum_mbus_code(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_mbus_code_enum *code)
{
 if (code->pad || code->index >= N_OV7740_FMTS)
  return -EINVAL;

 code->code = ov7740_formats[code->index].mbus_code;

 return 0;
}
