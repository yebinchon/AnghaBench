
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {int code; int index; int pad; } ;
struct v4l2_subdev {int dummy; } ;


 int s5c73m3_oif_get_pad_code (int ,int ) ;

__attribute__((used)) static int s5c73m3_oif_enum_mbus_code(struct v4l2_subdev *sd,
    struct v4l2_subdev_pad_config *cfg,
    struct v4l2_subdev_mbus_code_enum *code)
{
 int ret;

 ret = s5c73m3_oif_get_pad_code(code->pad, code->index);
 if (ret < 0)
  return ret;

 code->code = ret;

 return 0;
}
