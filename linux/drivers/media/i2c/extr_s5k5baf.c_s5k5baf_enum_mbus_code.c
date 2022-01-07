
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
 int MEDIA_BUS_FMT_FIXED ;
 scalar_t__ PAD_CIS ;
 TYPE_1__* s5k5baf_formats ;

__attribute__((used)) static int s5k5baf_enum_mbus_code(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_mbus_code_enum *code)
{
 if (code->pad == PAD_CIS) {
  if (code->index > 0)
   return -EINVAL;
  code->code = MEDIA_BUS_FMT_FIXED;
  return 0;
 }

 if (code->index >= ARRAY_SIZE(s5k5baf_formats))
  return -EINVAL;

 code->code = s5k5baf_formats[code->index].code;
 return 0;
}
