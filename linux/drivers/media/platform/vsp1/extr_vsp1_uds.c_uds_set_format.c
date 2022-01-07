
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct vsp1_uds {TYPE_1__ entity; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int pad; int which; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int UDS_PAD_SINK ;
 int UDS_PAD_SOURCE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vsp1_uds* to_uds (struct v4l2_subdev*) ;
 int uds_try_format (struct vsp1_uds*,struct v4l2_subdev_pad_config*,int ,struct v4l2_mbus_framefmt*) ;
 struct v4l2_subdev_pad_config* vsp1_entity_get_pad_config (TYPE_1__*,struct v4l2_subdev_pad_config*,int ) ;
 struct v4l2_mbus_framefmt* vsp1_entity_get_pad_format (TYPE_1__*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int uds_set_format(struct v4l2_subdev *subdev,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 struct vsp1_uds *uds = to_uds(subdev);
 struct v4l2_subdev_pad_config *config;
 struct v4l2_mbus_framefmt *format;
 int ret = 0;

 mutex_lock(&uds->entity.lock);

 config = vsp1_entity_get_pad_config(&uds->entity, cfg, fmt->which);
 if (!config) {
  ret = -EINVAL;
  goto done;
 }

 uds_try_format(uds, config, fmt->pad, &fmt->format);

 format = vsp1_entity_get_pad_format(&uds->entity, config, fmt->pad);
 *format = fmt->format;

 if (fmt->pad == UDS_PAD_SINK) {

  format = vsp1_entity_get_pad_format(&uds->entity, config,
          UDS_PAD_SOURCE);
  *format = fmt->format;

  uds_try_format(uds, config, UDS_PAD_SOURCE, format);
 }

done:
 mutex_unlock(&uds->entity.lock);
 return ret;
}
