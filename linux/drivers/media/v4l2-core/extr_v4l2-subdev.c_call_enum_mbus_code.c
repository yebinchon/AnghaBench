
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {int which; int pad; } ;
struct v4l2_subdev {TYPE_2__* ops; } ;
struct TYPE_4__ {TYPE_1__* pad; } ;
struct TYPE_3__ {int (* enum_mbus_code ) (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_mbus_code_enum*) ;} ;


 int EINVAL ;
 scalar_t__ check_cfg (int ,struct v4l2_subdev_pad_config*) ;
 scalar_t__ check_pad (struct v4l2_subdev*,int ) ;
 scalar_t__ check_which (int ) ;
 int stub1 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_mbus_code_enum*) ;

__attribute__((used)) static int call_enum_mbus_code(struct v4l2_subdev *sd,
          struct v4l2_subdev_pad_config *cfg,
          struct v4l2_subdev_mbus_code_enum *code)
{
 if (!code)
  return -EINVAL;

 return check_which(code->which) ? : check_pad(sd, code->pad) ? :
        check_cfg(code->which, cfg) ? :
        sd->ops->pad->enum_mbus_code(sd, cfg, code);
}
