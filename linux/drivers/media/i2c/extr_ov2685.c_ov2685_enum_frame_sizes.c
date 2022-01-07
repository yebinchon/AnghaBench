
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {int index; int min_height; int max_height; int max_width; int min_width; int code; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {int height; int width; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int MEDIA_BUS_FMT_SBGGR10_1X10 ;
 TYPE_1__* supported_modes ;

__attribute__((used)) static int ov2685_enum_frame_sizes(struct v4l2_subdev *sd,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_frame_size_enum *fse)
{
 int index = fse->index;

 if (index >= ARRAY_SIZE(supported_modes))
  return -EINVAL;

 fse->code = MEDIA_BUS_FMT_SBGGR10_1X10;

 fse->min_width = supported_modes[index].width;
 fse->max_width = supported_modes[index].width;
 fse->max_height = supported_modes[index].height;
 fse->min_height = supported_modes[index].height;

 return 0;
}
