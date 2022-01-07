
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ source_pad; int lock; } ;
struct vsp1_brx {TYPE_1__ entity; } ;
struct TYPE_4__ {void* height; void* width; int top; int left; } ;
struct v4l2_subdev_selection {scalar_t__ pad; int target; TYPE_2__ r; int which; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;


 void* BRX_MAX_SIZE ;
 int EINVAL ;


 TYPE_2__* brx_get_compose (struct vsp1_brx*,struct v4l2_subdev_pad_config*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vsp1_brx* to_brx (struct v4l2_subdev*) ;
 struct v4l2_subdev_pad_config* vsp1_entity_get_pad_config (TYPE_1__*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int brx_get_selection(struct v4l2_subdev *subdev,
        struct v4l2_subdev_pad_config *cfg,
        struct v4l2_subdev_selection *sel)
{
 struct vsp1_brx *brx = to_brx(subdev);
 struct v4l2_subdev_pad_config *config;

 if (sel->pad == brx->entity.source_pad)
  return -EINVAL;

 switch (sel->target) {
 case 128:
  sel->r.left = 0;
  sel->r.top = 0;
  sel->r.width = BRX_MAX_SIZE;
  sel->r.height = BRX_MAX_SIZE;
  return 0;

 case 129:
  config = vsp1_entity_get_pad_config(&brx->entity, cfg,
          sel->which);
  if (!config)
   return -EINVAL;

  mutex_lock(&brx->entity.lock);
  sel->r = *brx_get_compose(brx, config, sel->pad);
  mutex_unlock(&brx->entity.lock);
  return 0;

 default:
  return -EINVAL;
 }
}
