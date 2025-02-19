
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {int code; int index; } ;
struct v4l2_subdev {int dummy; } ;
struct fimc_fmt {int mbus_code; } ;


 int EINVAL ;
 int FMT_FLAGS_CAM ;
 struct fimc_fmt* fimc_find_format (int *,int *,int ,int ) ;

__attribute__((used)) static int fimc_subdev_enum_mbus_code(struct v4l2_subdev *sd,
          struct v4l2_subdev_pad_config *cfg,
          struct v4l2_subdev_mbus_code_enum *code)
{
 struct fimc_fmt *fmt;

 fmt = fimc_find_format(((void*)0), ((void*)0), FMT_FLAGS_CAM, code->index);
 if (!fmt)
  return -EINVAL;
 code->code = fmt->mbus_code;
 return 0;
}
