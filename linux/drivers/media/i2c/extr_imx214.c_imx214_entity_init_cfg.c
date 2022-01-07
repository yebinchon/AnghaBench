
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_3__ {int height; int width; } ;
struct v4l2_subdev_format {TYPE_1__ format; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_4__ {int height; int width; } ;


 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int V4L2_SUBDEV_FORMAT_TRY ;
 TYPE_2__* imx214_modes ;
 int imx214_set_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;

__attribute__((used)) static int imx214_entity_init_cfg(struct v4l2_subdev *subdev,
      struct v4l2_subdev_pad_config *cfg)
{
 struct v4l2_subdev_format fmt = { };

 fmt.which = cfg ? V4L2_SUBDEV_FORMAT_TRY : V4L2_SUBDEV_FORMAT_ACTIVE;
 fmt.format.width = imx214_modes[0].width;
 fmt.format.height = imx214_modes[0].height;

 imx214_set_format(subdev, cfg, &fmt);

 return 0;
}
