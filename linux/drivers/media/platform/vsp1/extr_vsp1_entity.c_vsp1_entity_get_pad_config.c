
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_entity {struct v4l2_subdev_pad_config* config; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
typedef enum v4l2_subdev_format_whence { ____Placeholder_v4l2_subdev_format_whence } v4l2_subdev_format_whence ;





struct v4l2_subdev_pad_config *
vsp1_entity_get_pad_config(struct vsp1_entity *entity,
      struct v4l2_subdev_pad_config *cfg,
      enum v4l2_subdev_format_whence which)
{
 switch (which) {
 case 129:
  return entity->config;
 case 128:
 default:
  return cfg;
 }
}
