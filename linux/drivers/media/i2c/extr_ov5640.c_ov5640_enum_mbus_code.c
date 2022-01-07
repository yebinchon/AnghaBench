
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {scalar_t__ pad; size_t index; int code; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {int code; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* ov5640_formats ;

__attribute__((used)) static int ov5640_enum_mbus_code(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_mbus_code_enum *code)
{
 if (code->pad != 0)
  return -EINVAL;
 if (code->index >= ARRAY_SIZE(ov5640_formats))
  return -EINVAL;

 code->code = ov5640_formats[code->index].code;
 return 0;
}
