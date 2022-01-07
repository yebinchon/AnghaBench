
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {size_t index; int code; scalar_t__ pad; } ;
struct v4l2_subdev {int dummy; } ;


 size_t ARRAY_SIZE (int *) ;
 int EINVAL ;
 int * ov2640_codes ;

__attribute__((used)) static int ov2640_enum_mbus_code(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_mbus_code_enum *code)
{
 if (code->pad || code->index >= ARRAY_SIZE(ov2640_codes))
  return -EINVAL;

 code->code = ov2640_codes[code->index];
 return 0;
}
