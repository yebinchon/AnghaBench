
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_entity {int lock; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {scalar_t__ code; unsigned int min_width; unsigned int max_width; unsigned int min_height; unsigned int max_height; int pad; scalar_t__ index; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; unsigned int width; unsigned int height; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vsp1_entity* to_vsp1_entity (struct v4l2_subdev*) ;
 struct v4l2_subdev_pad_config* vsp1_entity_get_pad_config (struct vsp1_entity*,struct v4l2_subdev_pad_config*,int ) ;
 struct v4l2_mbus_framefmt* vsp1_entity_get_pad_format (struct vsp1_entity*,struct v4l2_subdev_pad_config*,int ) ;

int vsp1_subdev_enum_frame_size(struct v4l2_subdev *subdev,
    struct v4l2_subdev_pad_config *cfg,
    struct v4l2_subdev_frame_size_enum *fse,
    unsigned int min_width, unsigned int min_height,
    unsigned int max_width, unsigned int max_height)
{
 struct vsp1_entity *entity = to_vsp1_entity(subdev);
 struct v4l2_subdev_pad_config *config;
 struct v4l2_mbus_framefmt *format;
 int ret = 0;

 config = vsp1_entity_get_pad_config(entity, cfg, fse->which);
 if (!config)
  return -EINVAL;

 format = vsp1_entity_get_pad_format(entity, config, fse->pad);

 mutex_lock(&entity->lock);

 if (fse->index || fse->code != format->code) {
  ret = -EINVAL;
  goto done;
 }

 if (fse->pad == 0) {
  fse->min_width = min_width;
  fse->max_width = max_width;
  fse->min_height = min_height;
  fse->max_height = max_height;
 } else {




  fse->min_width = format->width;
  fse->max_width = format->width;
  fse->min_height = format->height;
  fse->max_height = format->height;
 }

done:
 mutex_unlock(&entity->lock);
 return ret;
}
