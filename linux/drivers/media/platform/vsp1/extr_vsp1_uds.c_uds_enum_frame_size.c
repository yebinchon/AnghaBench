
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct vsp1_uds {TYPE_1__ entity; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {scalar_t__ code; scalar_t__ pad; void* max_height; void* min_height; void* max_width; void* min_width; scalar_t__ index; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; int height; int width; } ;


 int EINVAL ;
 void* UDS_MAX_SIZE ;
 void* UDS_MIN_SIZE ;
 scalar_t__ UDS_PAD_SINK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vsp1_uds* to_uds (struct v4l2_subdev*) ;
 int uds_output_limits (int ,void**,void**) ;
 struct v4l2_subdev_pad_config* vsp1_entity_get_pad_config (TYPE_1__*,struct v4l2_subdev_pad_config*,int ) ;
 struct v4l2_mbus_framefmt* vsp1_entity_get_pad_format (TYPE_1__*,struct v4l2_subdev_pad_config*,scalar_t__) ;

__attribute__((used)) static int uds_enum_frame_size(struct v4l2_subdev *subdev,
          struct v4l2_subdev_pad_config *cfg,
          struct v4l2_subdev_frame_size_enum *fse)
{
 struct vsp1_uds *uds = to_uds(subdev);
 struct v4l2_subdev_pad_config *config;
 struct v4l2_mbus_framefmt *format;
 int ret = 0;

 config = vsp1_entity_get_pad_config(&uds->entity, cfg, fse->which);
 if (!config)
  return -EINVAL;

 format = vsp1_entity_get_pad_format(&uds->entity, config,
         UDS_PAD_SINK);

 mutex_lock(&uds->entity.lock);

 if (fse->index || fse->code != format->code) {
  ret = -EINVAL;
  goto done;
 }

 if (fse->pad == UDS_PAD_SINK) {
  fse->min_width = UDS_MIN_SIZE;
  fse->max_width = UDS_MAX_SIZE;
  fse->min_height = UDS_MIN_SIZE;
  fse->max_height = UDS_MAX_SIZE;
 } else {
  uds_output_limits(format->width, &fse->min_width,
      &fse->max_width);
  uds_output_limits(format->height, &fse->min_height,
      &fse->max_height);
 }

done:
 mutex_unlock(&uds->entity.lock);
 return ret;
}
