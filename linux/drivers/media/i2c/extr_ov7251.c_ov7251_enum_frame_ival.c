
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_interval_enum {unsigned int index; scalar_t__ width; scalar_t__ height; int interval; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {scalar_t__ width; scalar_t__ height; int timeperframe; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* ov7251_mode_info_data ;

__attribute__((used)) static int ov7251_enum_frame_ival(struct v4l2_subdev *subdev,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_frame_interval_enum *fie)
{
 unsigned int index = fie->index;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(ov7251_mode_info_data); i++) {
  if (fie->width != ov7251_mode_info_data[i].width ||
      fie->height != ov7251_mode_info_data[i].height)
   continue;

  if (index-- == 0) {
   fie->interval = ov7251_mode_info_data[i].timeperframe;
   return 0;
  }
 }

 return -EINVAL;
}
