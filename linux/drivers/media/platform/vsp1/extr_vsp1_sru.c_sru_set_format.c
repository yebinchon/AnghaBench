
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct vsp1_sru {TYPE_1__ entity; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int pad; int which; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int SRU_PAD_SINK ;
 int SRU_PAD_SOURCE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sru_try_format (struct vsp1_sru*,struct v4l2_subdev_pad_config*,int ,struct v4l2_mbus_framefmt*) ;
 struct vsp1_sru* to_sru (struct v4l2_subdev*) ;
 struct v4l2_subdev_pad_config* vsp1_entity_get_pad_config (TYPE_1__*,struct v4l2_subdev_pad_config*,int ) ;
 struct v4l2_mbus_framefmt* vsp1_entity_get_pad_format (TYPE_1__*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int sru_set_format(struct v4l2_subdev *subdev,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 struct vsp1_sru *sru = to_sru(subdev);
 struct v4l2_subdev_pad_config *config;
 struct v4l2_mbus_framefmt *format;
 int ret = 0;

 mutex_lock(&sru->entity.lock);

 config = vsp1_entity_get_pad_config(&sru->entity, cfg, fmt->which);
 if (!config) {
  ret = -EINVAL;
  goto done;
 }

 sru_try_format(sru, config, fmt->pad, &fmt->format);

 format = vsp1_entity_get_pad_format(&sru->entity, config, fmt->pad);
 *format = fmt->format;

 if (fmt->pad == SRU_PAD_SINK) {

  format = vsp1_entity_get_pad_format(&sru->entity, config,
          SRU_PAD_SOURCE);
  *format = fmt->format;

  sru_try_format(sru, config, SRU_PAD_SOURCE, format);
 }

done:
 mutex_unlock(&sru->entity.lock);
 return ret;
}
