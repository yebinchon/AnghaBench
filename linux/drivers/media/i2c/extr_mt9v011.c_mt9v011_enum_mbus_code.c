
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {scalar_t__ index; int code; scalar_t__ pad; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int MEDIA_BUS_FMT_SGRBG8_1X8 ;

__attribute__((used)) static int mt9v011_enum_mbus_code(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_mbus_code_enum *code)
{
 if (code->pad || code->index > 0)
  return -EINVAL;

 code->code = MEDIA_BUS_FMT_SGRBG8_1X8;
 return 0;
}
