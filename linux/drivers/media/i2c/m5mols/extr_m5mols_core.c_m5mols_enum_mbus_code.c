
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {size_t index; int code; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int code; } ;


 int EINVAL ;
 size_t SIZE_DEFAULT_FFMT ;
 TYPE_1__* m5mols_default_ffmt ;

__attribute__((used)) static int m5mols_enum_mbus_code(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_mbus_code_enum *code)
{
 if (!code || code->index >= SIZE_DEFAULT_FFMT)
  return -EINVAL;

 code->code = m5mols_default_ffmt[code->index].code;

 return 0;
}
