
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {scalar_t__ pad; scalar_t__ index; int code; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int code; } ;
struct ov2680_dev {TYPE_1__ fmt; } ;


 int EINVAL ;
 struct ov2680_dev* to_ov2680_dev (struct v4l2_subdev*) ;

__attribute__((used)) static int ov2680_enum_mbus_code(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_mbus_code_enum *code)
{
 struct ov2680_dev *sensor = to_ov2680_dev(sd);

 if (code->pad != 0 || code->index != 0)
  return -EINVAL;

 code->code = sensor->fmt.code;

 return 0;
}
