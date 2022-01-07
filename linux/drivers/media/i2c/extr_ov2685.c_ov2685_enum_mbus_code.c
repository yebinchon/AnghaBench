
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {scalar_t__ index; int code; } ;
struct v4l2_subdev {int dummy; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int EINVAL ;
 int MEDIA_BUS_FMT_SBGGR10_1X10 ;
 int supported_modes ;

__attribute__((used)) static int ov2685_enum_mbus_code(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_mbus_code_enum *code)
{
 if (code->index >= ARRAY_SIZE(supported_modes))
  return -EINVAL;

 code->code = MEDIA_BUS_FMT_SBGGR10_1X10;

 return 0;
}
