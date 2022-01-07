
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {scalar_t__ pad; size_t index; int min_height; int max_height; int min_width; int max_width; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int vact; int hact; } ;


 int EINVAL ;
 size_t OV5640_NUM_MODES ;
 TYPE_1__* ov5640_mode_data ;

__attribute__((used)) static int ov5640_enum_frame_size(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_frame_size_enum *fse)
{
 if (fse->pad != 0)
  return -EINVAL;
 if (fse->index >= OV5640_NUM_MODES)
  return -EINVAL;

 fse->min_width =
  ov5640_mode_data[fse->index].hact;
 fse->max_width = fse->min_width;
 fse->min_height =
  ov5640_mode_data[fse->index].vact;
 fse->max_height = fse->min_height;

 return 0;
}
