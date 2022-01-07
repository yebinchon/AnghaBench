
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_entity {int lock; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int pad; int format; int which; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vsp1_entity* to_vsp1_entity (struct v4l2_subdev*) ;
 struct v4l2_subdev_pad_config* vsp1_entity_get_pad_config (struct vsp1_entity*,struct v4l2_subdev_pad_config*,int ) ;
 int * vsp1_entity_get_pad_format (struct vsp1_entity*,struct v4l2_subdev_pad_config*,int ) ;

int vsp1_subdev_get_pad_format(struct v4l2_subdev *subdev,
          struct v4l2_subdev_pad_config *cfg,
          struct v4l2_subdev_format *fmt)
{
 struct vsp1_entity *entity = to_vsp1_entity(subdev);
 struct v4l2_subdev_pad_config *config;

 config = vsp1_entity_get_pad_config(entity, cfg, fmt->which);
 if (!config)
  return -EINVAL;

 mutex_lock(&entity->lock);
 fmt->format = *vsp1_entity_get_pad_format(entity, config, fmt->pad);
 mutex_unlock(&entity->lock);

 return 0;
}
