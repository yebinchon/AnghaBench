
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {int index; int max_height; int max_width; int min_height; int min_width; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int height; int width; } ;


 int EINVAL ;
 int OV2680_MODE_MAX ;
 TYPE_1__* ov2680_mode_data ;

__attribute__((used)) static int ov2680_enum_frame_size(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_frame_size_enum *fse)
{
 int index = fse->index;

 if (index >= OV2680_MODE_MAX || index < 0)
  return -EINVAL;

 fse->min_width = ov2680_mode_data[index].width;
 fse->min_height = ov2680_mode_data[index].height;
 fse->max_width = ov2680_mode_data[index].width;
 fse->max_height = ov2680_mode_data[index].height;

 return 0;
}
