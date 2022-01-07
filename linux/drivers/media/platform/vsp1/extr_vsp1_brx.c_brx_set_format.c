
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ source_pad; int lock; } ;
struct vsp1_brx {TYPE_1__ entity; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int code; int height; int width; } ;
struct v4l2_subdev_format {unsigned int pad; struct v4l2_mbus_framefmt format; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int height; int width; scalar_t__ top; scalar_t__ left; } ;


 scalar_t__ BRX_PAD_SINK (int ) ;
 int EINVAL ;
 struct v4l2_rect* brx_get_compose (struct vsp1_brx*,struct v4l2_subdev_pad_config*,scalar_t__) ;
 int brx_try_format (struct vsp1_brx*,struct v4l2_subdev_pad_config*,unsigned int,struct v4l2_mbus_framefmt*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vsp1_brx* to_brx (struct v4l2_subdev*) ;
 struct v4l2_subdev_pad_config* vsp1_entity_get_pad_config (TYPE_1__*,struct v4l2_subdev_pad_config*,int ) ;
 struct v4l2_mbus_framefmt* vsp1_entity_get_pad_format (TYPE_1__*,struct v4l2_subdev_pad_config*,unsigned int) ;

__attribute__((used)) static int brx_set_format(struct v4l2_subdev *subdev,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 struct vsp1_brx *brx = to_brx(subdev);
 struct v4l2_subdev_pad_config *config;
 struct v4l2_mbus_framefmt *format;
 int ret = 0;

 mutex_lock(&brx->entity.lock);

 config = vsp1_entity_get_pad_config(&brx->entity, cfg, fmt->which);
 if (!config) {
  ret = -EINVAL;
  goto done;
 }

 brx_try_format(brx, config, fmt->pad, &fmt->format);

 format = vsp1_entity_get_pad_format(&brx->entity, config, fmt->pad);
 *format = fmt->format;


 if (fmt->pad != brx->entity.source_pad) {
  struct v4l2_rect *compose;

  compose = brx_get_compose(brx, config, fmt->pad);
  compose->left = 0;
  compose->top = 0;
  compose->width = format->width;
  compose->height = format->height;
 }


 if (fmt->pad == BRX_PAD_SINK(0)) {
  unsigned int i;

  for (i = 0; i <= brx->entity.source_pad; ++i) {
   format = vsp1_entity_get_pad_format(&brx->entity,
           config, i);
   format->code = fmt->format.code;
  }
 }

done:
 mutex_unlock(&brx->entity.lock);
 return ret;
}
