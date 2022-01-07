
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {int code; scalar_t__ index; scalar_t__ pad; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int TVP5150_MBUS_FMT ;

__attribute__((used)) static int tvp5150_enum_mbus_code(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_mbus_code_enum *code)
{
 if (code->pad || code->index)
  return -EINVAL;

 code->code = TVP5150_MBUS_FMT;
 return 0;
}
