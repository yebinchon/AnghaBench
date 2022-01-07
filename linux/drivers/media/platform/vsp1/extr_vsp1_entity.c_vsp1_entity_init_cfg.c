
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {unsigned int pad; int which; } ;
struct TYPE_2__ {int num_pads; } ;
struct v4l2_subdev {TYPE_1__ entity; } ;
typedef int format ;


 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int V4L2_SUBDEV_FORMAT_TRY ;
 int memset (struct v4l2_subdev_format*,int ,int) ;
 int set_fmt ;
 int v4l2_subdev_call (struct v4l2_subdev*,unsigned int,int ,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;

int vsp1_entity_init_cfg(struct v4l2_subdev *subdev,
    struct v4l2_subdev_pad_config *cfg)
{
 struct v4l2_subdev_format format;
 unsigned int pad;

 for (pad = 0; pad < subdev->entity.num_pads - 1; ++pad) {
  memset(&format, 0, sizeof(format));

  format.pad = pad;
  format.which = cfg ? V4L2_SUBDEV_FORMAT_TRY
        : V4L2_SUBDEV_FORMAT_ACTIVE;

  v4l2_subdev_call(subdev, pad, set_fmt, cfg, &format);
 }

 return 0;
}
