
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vimc_deb_device {int src_code; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {int index; int code; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {int code; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 scalar_t__ IS_SRC (int ) ;
 struct vimc_deb_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 TYPE_1__* vimc_deb_pix_map_list ;

__attribute__((used)) static int vimc_deb_enum_mbus_code(struct v4l2_subdev *sd,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_mbus_code_enum *code)
{

 if (IS_SRC(code->pad)) {
  struct vimc_deb_device *vdeb = v4l2_get_subdevdata(sd);

  if (code->index)
   return -EINVAL;

  code->code = vdeb->src_code;
 } else {
  if (code->index >= ARRAY_SIZE(vimc_deb_pix_map_list))
   return -EINVAL;

  code->code = vimc_deb_pix_map_list[code->index].code;
 }

 return 0;
}
