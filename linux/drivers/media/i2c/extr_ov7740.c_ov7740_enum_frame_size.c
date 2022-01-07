
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {scalar_t__ index; int max_height; int min_height; int max_width; int min_width; scalar_t__ pad; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int VGA_HEIGHT ;
 int VGA_WIDTH ;

__attribute__((used)) static int ov7740_enum_frame_size(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_frame_size_enum *fse)
{
 if (fse->pad)
  return -EINVAL;

 if (fse->index > 0)
  return -EINVAL;

 fse->min_width = fse->max_width = VGA_WIDTH;
 fse->min_height = fse->max_height = VGA_HEIGHT;

 return 0;
}
