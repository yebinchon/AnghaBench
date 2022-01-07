
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vimc_pix_map {int dummy; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {int max_height; int min_height; int max_width; int min_width; int code; scalar_t__ index; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int VIMC_FRAME_MAX_HEIGHT ;
 int VIMC_FRAME_MAX_WIDTH ;
 int VIMC_FRAME_MIN_HEIGHT ;
 int VIMC_FRAME_MIN_WIDTH ;
 struct vimc_pix_map* vimc_pix_map_by_code (int ) ;

__attribute__((used)) static int vimc_sen_enum_frame_size(struct v4l2_subdev *sd,
        struct v4l2_subdev_pad_config *cfg,
        struct v4l2_subdev_frame_size_enum *fse)
{
 const struct vimc_pix_map *vpix;

 if (fse->index)
  return -EINVAL;


 vpix = vimc_pix_map_by_code(fse->code);
 if (!vpix)
  return -EINVAL;

 fse->min_width = VIMC_FRAME_MIN_WIDTH;
 fse->max_width = VIMC_FRAME_MAX_WIDTH;
 fse->min_height = VIMC_FRAME_MIN_HEIGHT;
 fse->max_height = VIMC_FRAME_MAX_HEIGHT;

 return 0;
}
