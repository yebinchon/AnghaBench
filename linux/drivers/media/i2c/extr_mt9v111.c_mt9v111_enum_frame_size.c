
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {size_t index; int max_height; int min_height; int max_width; int min_width; scalar_t__ pad; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {int height; int width; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* mt9v111_frame_sizes ;

__attribute__((used)) static int mt9v111_enum_frame_size(struct v4l2_subdev *subdev,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_frame_size_enum *fse)
{
 if (fse->pad || fse->index >= ARRAY_SIZE(mt9v111_frame_sizes))
  return -EINVAL;

 fse->min_width = mt9v111_frame_sizes[fse->index].width;
 fse->max_width = mt9v111_frame_sizes[fse->index].width;
 fse->min_height = mt9v111_frame_sizes[fse->index].height;
 fse->max_height = mt9v111_frame_sizes[fse->index].height;

 return 0;
}
