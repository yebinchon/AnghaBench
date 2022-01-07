
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {int dummy; } ;
struct v4l2_subdev {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int clu_codes ;
 int vsp1_subdev_enum_mbus_code (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_mbus_code_enum*,int ,int ) ;

__attribute__((used)) static int clu_enum_mbus_code(struct v4l2_subdev *subdev,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_mbus_code_enum *code)
{
 return vsp1_subdev_enum_mbus_code(subdev, cfg, code, clu_codes,
       ARRAY_SIZE(clu_codes));
}
