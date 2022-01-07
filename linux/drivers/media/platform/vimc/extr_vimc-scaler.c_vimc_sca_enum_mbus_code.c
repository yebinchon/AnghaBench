
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vimc_pix_map {int code; scalar_t__ bayer; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {int code; int index; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 struct vimc_pix_map* vimc_pix_map_by_index (int ) ;

__attribute__((used)) static int vimc_sca_enum_mbus_code(struct v4l2_subdev *sd,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_mbus_code_enum *code)
{
 const struct vimc_pix_map *vpix = vimc_pix_map_by_index(code->index);


 if (!vpix || vpix->bayer)
  return -EINVAL;

 code->code = vpix->code;

 return 0;
}
