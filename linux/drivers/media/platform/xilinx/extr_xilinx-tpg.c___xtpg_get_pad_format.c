
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int subdev; } ;
struct xtpg_device {struct v4l2_mbus_framefmt* formats; TYPE_1__ xvip; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;




 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (int *,struct v4l2_subdev_pad_config*,unsigned int) ;

__attribute__((used)) static struct v4l2_mbus_framefmt *
__xtpg_get_pad_format(struct xtpg_device *xtpg,
        struct v4l2_subdev_pad_config *cfg,
        unsigned int pad, u32 which)
{
 switch (which) {
 case 128:
  return v4l2_subdev_get_try_format(&xtpg->xvip.subdev, cfg, pad);
 case 129:
  return &xtpg->formats[pad];
 default:
  return ((void*)0);
 }
}
