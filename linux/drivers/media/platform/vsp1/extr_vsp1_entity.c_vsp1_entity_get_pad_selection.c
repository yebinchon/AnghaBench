
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_entity {int subdev; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_rect {int dummy; } ;




 struct v4l2_rect* v4l2_subdev_get_try_compose (int *,struct v4l2_subdev_pad_config*,unsigned int) ;
 struct v4l2_rect* v4l2_subdev_get_try_crop (int *,struct v4l2_subdev_pad_config*,unsigned int) ;

struct v4l2_rect *
vsp1_entity_get_pad_selection(struct vsp1_entity *entity,
         struct v4l2_subdev_pad_config *cfg,
         unsigned int pad, unsigned int target)
{
 switch (target) {
 case 129:
  return v4l2_subdev_get_try_compose(&entity->subdev, cfg, pad);
 case 128:
  return v4l2_subdev_get_try_crop(&entity->subdev, cfg, pad);
 default:
  return ((void*)0);
 }
}
