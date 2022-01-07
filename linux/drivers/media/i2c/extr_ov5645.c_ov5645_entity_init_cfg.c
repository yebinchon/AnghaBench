
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {int width; int height; } ;
struct v4l2_subdev_format {TYPE_1__ format; int which; int member_0; } ;
struct v4l2_subdev {int dummy; } ;


 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int V4L2_SUBDEV_FORMAT_TRY ;
 int ov5645_set_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;

__attribute__((used)) static int ov5645_entity_init_cfg(struct v4l2_subdev *subdev,
      struct v4l2_subdev_pad_config *cfg)
{
 struct v4l2_subdev_format fmt = { 0 };

 fmt.which = cfg ? V4L2_SUBDEV_FORMAT_TRY : V4L2_SUBDEV_FORMAT_ACTIVE;
 fmt.format.width = 1920;
 fmt.format.height = 1080;

 ov5645_set_format(subdev, cfg, &fmt);

 return 0;
}
