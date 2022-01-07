
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_entity {int lock; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {scalar_t__ pad; unsigned int index; unsigned int code; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {unsigned int code; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vsp1_entity* to_vsp1_entity (struct v4l2_subdev*) ;
 struct v4l2_subdev_pad_config* vsp1_entity_get_pad_config (struct vsp1_entity*,struct v4l2_subdev_pad_config*,int ) ;
 struct v4l2_mbus_framefmt* vsp1_entity_get_pad_format (struct vsp1_entity*,struct v4l2_subdev_pad_config*,int ) ;

int vsp1_subdev_enum_mbus_code(struct v4l2_subdev *subdev,
          struct v4l2_subdev_pad_config *cfg,
          struct v4l2_subdev_mbus_code_enum *code,
          const unsigned int *codes, unsigned int ncodes)
{
 struct vsp1_entity *entity = to_vsp1_entity(subdev);

 if (code->pad == 0) {
  if (code->index >= ncodes)
   return -EINVAL;

  code->code = codes[code->index];
 } else {
  struct v4l2_subdev_pad_config *config;
  struct v4l2_mbus_framefmt *format;





  if (code->index)
   return -EINVAL;

  config = vsp1_entity_get_pad_config(entity, cfg, code->which);
  if (!config)
   return -EINVAL;

  mutex_lock(&entity->lock);
  format = vsp1_entity_get_pad_format(entity, config, 0);
  code->code = format->code;
  mutex_unlock(&entity->lock);
 }

 return 0;
}
